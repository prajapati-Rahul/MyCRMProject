<?php
// created: 2024-02-01 13:47:49
$viewdefs['Documents']['DetailView'] = array (
  'templateMeta' => 
  array (
    'maxColumns' => '2',
    'form' => 
    array (
      'buttons' => 
      array (
        0 => 'EDIT',
        1 => 'DUPLICATE',
        2 => 'DELETE',
      ),
      'headerTpl' => 'modules/Documents/tpls/detailHeader.tpl',
    ),
    0 => 
    array (
      'hidden' => 
      array (
        0 => '<input type="hidden" name="old_id" value="{$fields.document_revision_id.value}">',
      ),
    ),
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
    'includes' => 
    array (
      0 => 
      array (
        'file' => 'custom/modules/Documents/js/detailViewValidation.js',
      ),
    ),
    'useTabs' => true,
    'tabDefs' => 
    array (
      'LBL_DOCUMENT_INFORMATION' => 
      array (
        'newTab' => true,
        'panelDefault' => 'expanded',
      ),
      'LBL_PANEL_ASSIGNMENT' => 
      array (
        'newTab' => true,
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
            'link' => 'filename',
            'id' => 'document_revision_id',
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
        0 => 
        array (
          'name' => 'document_name',
          'label' => 'LBL_DOC_NAME',
        ),
        1 => 'active_date',
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
        0 => 'related_doc_name',
        1 => 'related_doc_rev_number',
      ),
      8 => 
      array (
        0 => 
        array (
          'name' => 'assigned_user_name',
          'label' => 'LBL_ASSIGNED_TO_NAME',
        ),
      ),
    ),
    'LBL_PANEL_ASSIGNMENT' => 
    array (
      0 => 
      array (
        0 => 
        array (
          'name' => 'date_entered',
          'customCode' => '{$fields.date_entered.value} {$APP.LBL_BY} {$fields.created_by_name.value}',
        ),
        1 => 
        array (
          'name' => 'date_modified',
          'label' => 'LBL_DATE_MODIFIED',
          'customCode' => '{$fields.date_modified.value} {$APP.LBL_BY} {$fields.modified_by_name.value}',
        ),
      ),
    ),
  ),
);