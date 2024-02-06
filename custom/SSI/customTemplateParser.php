<?php

use SuiteCRM\Utility\SuiteValidator as SuiteValidator;

class customTemplateParser
{
    public static function custom_parse_template($string, $bean_arr)
    {
        foreach ($bean_arr as $bean_name => $bean_id) {
            $focus = BeanFactory::getBean($bean_name, $bean_id);
            $string = customTemplateParser::custom_parse_template_bean($string, $focus->table_name, $focus);

            foreach ($focus->field_defs as $focus_name => $focus_arr) {
                if ($focus_arr['type'] == 'relate') {
                    if (isset($focus_arr['module']) && $focus_arr['module'] != '' && $focus_arr['module'] != 'EmailAddress') {
                        $idName = $focus_arr['id_name'];
                        $relate_focus = BeanFactory::getBean($focus_arr['module'], $focus->$idName);

                        $string = customTemplateParser::custom_parse_template_bean($string, $focus_arr['name'], $relate_focus);
                    }
                }
            }
        }
        return $string;
    }

    public static function custom_parse_template_bean($string, $key, &$focus)
    {
        global $app_strings, $sugar_config;
        $repl_arr = array();
        $isValidator = new SuiteValidator();

        foreach ($focus->field_defs as $field_def) {
            if (isset($field_def['name']) && $field_def['name'] != '') {
                $fieldName = $field_def['name'];

                if (empty($focus->$fieldName)) {
                    $repl_arr[$key . '_' . $fieldName] = '';
                    continue;
                }

                if ($field_def['type'] == 'currency') {
                    $repl_arr[$key . "_" . $fieldName] = currency_format_number($focus->$fieldName, $params = array('currency_symbol' => false,'round'=> 0 ,'decimals' => 0));
                } elseif (($field_def['type'] == 'radioenum' || $field_def['type'] == 'enum' || $field_def['type'] == 'dynamicenum') && isset($field_def['options'])) {
                    $repl_arr[$key . "_" . $fieldName] = translate($field_def['options'], $focus->module_dir, $focus->$fieldName);
                } elseif ($field_def['type'] == 'multienum' && isset($field_def['options'])) {
                    $mVals = unencodeMultienum($focus->$fieldName);
                    $translatedVals = array();
                    foreach ($mVals as $mVal) {
                        $translatedVals[] = translate($field_def['options'], $focus->module_dir, $mVal);
                    }
                    $repl_arr[$key . "_" . $fieldName] = implode(", ", $translatedVals);
                } //Fix for Windows Server as it needed to be converted to a string.
                elseif ($field_def['type'] == 'int') {
                    $repl_arr[$key . "_" . $fieldName] = (string)$focus->$fieldName;
                } elseif ($field_def['type'] == 'bool') {
                    if ($focus->$fieldName == "1") {
                        $repl_arr[$key . "_" . $fieldName] = "true";
                    } else {
                        $repl_arr[$key . "_" . $fieldName] = "false";
                    }
                } elseif ($field_def['type'] == 'image') {
                    $secureLink = $sugar_config['site_url'] . '/' . "public/". $focus->id .  '_' . $fieldName;
                    $file_location = $sugar_config['upload_dir'] . '/'  . $focus->id .  '_' . $fieldName;
                    // create a copy with correct extension by mime type
                    if (!file_exists('public')) {
                        sugar_mkdir('public', 0777);
                    }
                    if (!copy($file_location, "public/{$focus->id}".  '_' . (string)$fieldName)) {
                        $secureLink = $sugar_config['site_url'] . '/'. $file_location;
                    }

                    if (empty($focus->$fieldName)) {
                        $repl_arr[$key . "_" . $fieldName] = "";
                    } else {
                        $link = $secureLink;
                        $repl_arr[$key . "_" . $fieldName] = '<img src="' . $link . '" width="'.$field_def['width'].'" height="'.$field_def['height'].'"/>';
                    }
                } else {
                    $repl_arr[$key . "_" . $fieldName] = $focus->$fieldName;
                }
            }
        } // end foreach()

        krsort($repl_arr);
        reset($repl_arr);

        foreach ($repl_arr as $name => $value) {
            if (strpos($name, 'product_discount') !== false || strpos($name, 'quotes_discount') !== false) {
                if ($value !== '' && isset($repl_arr['aos_products_quotes_discount'])) {
                    if ($isValidator->isPercentageField($repl_arr['aos_products_quotes_discount'])) {
                        $sep = get_number_separators();
                        $value = rtrim(
                            rtrim(format_number($value), '0'),
                            $sep[1]
                        ) . $app_strings['LBL_PERCENTAGE_SYMBOL'];
                    }
                } else {
                    $value = '';
                }
            }
            if ($name === 'aos_products_product_image' && !empty($value)) {
                $value = '<img src="' . $value . '" class="img-responsive"/>';
            }
            if ($name === 'aos_products_quotes_product_qty') {
                $sep = get_number_separators();
                $value = rtrim(rtrim(format_number($value), '0'), $sep[1]);
            }

            if ($isValidator->isPercentageField($name)) {
                $sep = get_number_separators();
                $value = rtrim(rtrim(format_number($value), '0'), $sep[1]) . $app_strings['LBL_PERCENTAGE_SYMBOL'];
            }
            if (!empty($focus->field_defs[$name]['dbType'])
                && $focus->field_defs[$name]['dbType'] === 'datetime'
                && (strpos($name, 'date') > 0 || strpos($name, 'expiration') > 0)
            ) {
                if ($value != '') {
                    $dt = explode(' ', $value);
                    $value = $dt[0];
                    if (isset($dt[1]) && $dt[1]!='') {
                        if (strpos($dt[1], 'am') > 0 || strpos($dt[1], 'pm') > 0) {
                            $value = $dt[0].' '.$dt[1];
                        }
                    }
                }
            }
            if ($value != '' && is_string($value)) {
                $string = str_replace("\$$name", $value, $string);
            } elseif (strpos($name, 'address') > 0) {
                $string = str_replace("\$$name<br />", '', $string);
                $string = str_replace("\$$name <br />", '', $string);
                $string = str_replace("\$$name", '', $string);
            } else {
                $string = str_replace("\$$name", '&nbsp;', $string);
            }
        }

        return $string;
    }
}
