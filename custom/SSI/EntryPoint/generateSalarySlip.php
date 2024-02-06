<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point'); 
require_once('modules/AOS_PDF_Templates/PDF_Lib/mpdf.php');
require_once('modules/AOS_PDF_Templates/AOS_PDF_Templates.php');
require_once('modules/AOS_PDF_Templates/templateParser.php');
global $sugar_config;
$id = $_REQUEST['uid'];
$templateID = $sugar_config['pdf_template']['salaryslip'];
$module = 'SSI_Salary_Slip';

$bean = BeanFactory::newBean($module);
$bean->retrieve($id);

if (!$bean) {
	sugar_die("Invalid Record");
}

$template = BeanFactory::newBean('AOS_PDF_Templates');
$template->retrieve($templateID);

$object_arr = array();
$object_arr[$bean->module_dir] = $bean->id;

//backward compatibility
$object_arr['Accounts'] = $bean->billing_account_id;
$object_arr['Contacts'] = $bean->billing_contact_id;
$object_arr['Users'] = $bean->assigned_user_id;
$object_arr['Currencies'] = $bean->currency_id;


$search = array('/<script[^>]*?>.*?<\/script>/si',      // Strip out javascript
	'/<[\/\!]*?[^<>]*?>/si',        // Strip out HTML tags
	'/([\r\n])[\s]+/',          // Strip out white space
	'/&(quot|#34);/i',          // Replace HTML entities
	'/&(amp|#38);/i',
	'/&(lt|#60);/i',
	'/&(gt|#62);/i',
	'/&(nbsp|#160);/i',
	'/&(iexcl|#161);/i',
	'/<address[^>]*?>/si',
	'/&(apos|#0*39);/',
	'/&#(\d+);/'
);

$replace = array('',
	'',
	'\1',
	'"',
	'&',
	'<',
	'>',
	' ',
	chr(161),
	'<br>',
	"'",
	'chr(%1)'
);

$header = preg_replace($search, $replace, $template->pdfheader);
$footer = preg_replace($search, $replace, $template->pdffooter);
$text = preg_replace($search, $replace, $template->description);
$text = str_replace("<p><pagebreak /></p>", "<pagebreak />", $text);
$text = replaceText($bean,$text);
$text = preg_replace_callback(
	'/\{DATE\s+(.*?)\}/',
	function ($matches) {
	    return date($matches[1]);
	},
	$text
);
$converted = templateParser::parse_template($text, $object_arr);
$header = templateParser::parse_template($header, $object_arr);
$footer = templateParser::parse_template($footer, $object_arr);
$printable = str_replace("\n", "<br />", $converted);
$file_name = str_replace(" ", "_", $bean->name) . ".pdf";
$orientation = ($template->orientation == "Landscape") ? "-L" : "";
$pdf = new mPDF('en', $template->page_size . $orientation, '', 'DejaVuSansCondensed', $template->margin_left, $template->margin_right, $template->margin_top, $template->margin_bottom, $template->margin_header, $template->margin_footer);
$pdf->SetAutoFont();
$pdf->SetHTMLHeader($header);
$pdf->SetHTMLFooter($footer);
$pdf->WriteHTML($printable);
header('Content-Type: application/pdf ,charset=utf-8');	
if(!$bean->is_generated)
{
	$fp = fopen($sugar_config['upload_dir'] . $bean->id, 'wb');
    fclose($fp);
    $pdf->Output($sugar_config['upload_dir'] . $bean->id, 'F');
    $bean->is_generated = true;
    $bean->status = 'Generated';
    $bean->processed = true;
    $bean->save();

}
$pdf->Output($file_name, "D");		

function replaceText($bean,$text)
{	
	global $app_list_strings;
	$masterArray = array(
		"basic" => "sal_basic",
		"pf" => "ded_pf",
		"hra" => "sal_hra",
		"esi" => "ded_esi",
		"conv" => "sal_conv",
		"loan" => "ded_loan",
		"trans" => "sal_trans",
		"tax" => "ded_professional_tax",
		"special" => "sal_special",
		"medical" => "sal_medical",
		"gross_earning" => "sal_gross_earning",
		"gross_deduction" => "sal_gross_deduction",
		"net_amount" => "sal_net_amount",
		"tds" => "ded_tds"
	);
	$month_year = $app_list_strings['month_list'][$bean->month]."-".$bean->year;
	foreach($masterArray as $key => $val) 
	{
		if (!empty($bean->$val) && round($bean->$val) != 0) {
			$text = str_replace("{".$key."}", format_number($bean->$val)."/-" , $text);
		} else {
			$text = str_replace("{".$key."}", "-" , $text);
		}
	}
	$text = str_replace("{month_year}", $month_year , $text);
	$text = str_replace("\$ssi_salary_slip_days_worked", round($bean->days_worked,1) , $text);

	return $text;
}   
