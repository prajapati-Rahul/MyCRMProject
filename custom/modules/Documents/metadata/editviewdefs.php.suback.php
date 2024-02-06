<?php
$viewdefs ['Documents'] = 
array (
  'EditView' => 
  array (
    'templateMeta' => 
    array (
      'form' => 
      array (
        'enctype' => 'multipart/form-data',
        'hidden' => 
        array (
          0 => '<input type="hidden" name="old_id" value="{$fields.document_revision_id.value}">',
          1 => '<input type="hidden" name="contract_id" value="{$smarty.request.contract_id}">',
        ),
      ),
      'maxColumns' => '2',
      'widths' => 
      array (
        0 => 
        array (
          'label' => '10',
          'field' => '30',
        ),
        1 => 
        array (
          'label' => '10',
          'field' => '30',
        ),
      ),
      'javascript' => '{sugar_getscript file="include/javascript/popup_parent_helper.js"}
{sugar_getscript file="cache/include/javascript/sugar_grp_jsolait.js"}
{sugar_getscript file="modules/Documents/documents.js"}{sugar_getscript file="custom/modules/Documents/js/editViewValidation.js"}',
      'useTabs' => false,
      'tabDefs' => 
      array (
        'LBL_DOCUMENT_INFORMATION' => 
        array (
          'newTab' => false,
          'panelDefault' => 'expanded',
        ),
      ),
    ),
    'panels' => 
    array (
      'lbl_document_information' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'filename',
            'displayParams' => 
            array (
              'onchangeSetFileNameTo' => 'document_name',
            ),
          ),
          1 => 
          array (
            'name' => 'status_id',
            'label' => 'LBL_DOC_STATUS',
          ),
        ),
        1 => 
        array (
          0 => 'document_name',
          1 => 
          array (
            'name' => 'active_date',
          ),
        ),
        2 => 
        array (
          0 => 'category_id',
          1 => 
          array (
            'name' => 'document_type',
            'studio' => 'visible',
            'label' => 'LBL_DOCUMENT_TYPE',
          ),
        ),
        3 => 
        array (
          0 => '',
          1 => 
          array (
            'name' => 'expense_type',
            'studio' => 'visible',
            'label' => 'LBL_EXPENSE_TYPE',
          ),
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'gst_compliance',
            'label' => 'LBL_GST_COMPLIANCE',
          ),
          1 => 
          array (
            'name' => 'gst_amount',
            'label' => 'LBL_GST_AMOUNT',
          ),
        ),
        5 => 
        array (
          0 => 
          array (
            'name' => 'document_date',
            'label' => 'LBL_DOCUMENT_DATE',
            'displayParams' => 
            array (
              'field' => 
              array (
                'onchange' => 'setMonthYear();',
              ),
            ),
          ),
          1 => 
          array (
            'name' => 'amount',
            'label' => 'LBL_AMOUNT',
          ),
        ),
        6 => 
        array (
          0 => 
          array (
            'name' => 'month',
            'studio' => 'visible',
            'label' => 'LBL_MONTH',
          ),
          1 => 
          array (
            'name' => 'year',
            'studio' => 'visible',
            'label' => 'LBL_YEAR',
          ),
        ),
        7 => 
        array (
          0 => 
          array (
            'name' => 'description',
          ),
        ),
        8 => 
        array (
          0 => 
          array (
            'name' => 'related_doc_name',
            'customCode' => '<input name="related_document_name" type="text" size="30" maxlength="255" value="{$RELATED_DOCUMENT_NAME}" readonly><input name="related_doc_id" type="hidden" value="{$fields.related_doc_id.value}"/>&nbsp;<input title="{$APP.LBL_SELECT_BUTTON_TITLE}" type="{$RELATED_DOCUMENT_BUTTON_AVAILABILITY}" class="button" value="{$APP.LBL_SELECT_BUTTON_LABEL}" name="btn2" onclick=\'open_popup("Documents", 600, 400, "", true, false, {$encoded_document_popup_request_data}, "single", true);\'/>',
          ),
          1 => 
          array (
            'name' => 'related_doc_rev_number',
            'customCode' => '<select name="related_doc_rev_id" id="related_doc_rev_id" {$RELATED_DOCUMENT_REVISION_DISABLED}>{$RELATED_DOCUMENT_REVISION_OPTIONS}</select>',
          ),
        ),
        9 => 
        array (
          0 => 
          array (
            'name' => 'assigned_user_name',
            'label' => 'LBL_ASSIGNED_TO_NAME',
          ),
        ),
      ),
    ),
  ),
);
;
?>
