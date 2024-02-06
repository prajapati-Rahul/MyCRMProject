<?php
$module_name = 'SSI_Salary_Structure';
$viewdefs [$module_name] = 
array (
  'EditView' => 
  array (
    'templateMeta' => 
    array (
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
      'useTabs' => true,
      'tabDefs' => 
      array (
        'DEFAULT' => 
        array (
          'newTab' => true,
          'panelDefault' => 'expanded',
        ),
        'LBL_EDITVIEW_PANEL1' => 
        array (
          'newTab' => true,
          'panelDefault' => 'expanded',
        ),
        'LBL_EDITVIEW_PANEL2' => 
        array (
          'newTab' => false,
          'panelDefault' => 'expanded',
        ),
      ),
      'syncDetailEditViews' => false,
    ),
    'panels' => 
    array (
      'default' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'status',
            'studio' => 'visible',
            'label' => 'LBL_STATUS',
          ),
          1 => 'assigned_user_name',
        ),
      ),
      'lbl_editview_panel1' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'sal_basic',
            'label' => 'LBL_SAL_BASIC',
          ),
          1 => 
          array (
            'name' => 'sal_hra',
            'label' => 'LBL_SAL_HRA',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'sal_conv',
            'label' => 'LBL_SAL_CONV',
          ),
          1 => 
          array (
            'name' => 'sal_trans',
            'label' => 'LBL_SAL_TRANS',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'sal_special',
            'label' => 'LBL_SAL_SPECIAL',
          ),
          1 => 
          array (
            'name' => 'sal_medical',
            'label' => 'LBL_SAL_MEDICAL',
          ),
        ),
      ),
      'lbl_editview_panel2' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'ded_pf',
            'label' => 'LBL_DED_PF',
          ),
          1 => 
          array (
            'name' => 'ded_esi',
            'label' => 'LBL_DED_ESI',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'ded_professional_tax',
            'label' => 'LBL_DED_PROFESSIONAL_TAX',
          ),
          1 => 
          array (
            'name' => 'ded_tds',
            'label' => 'LBL_DED_TDS',
          ),
        ),
      ),
    ),
  ),
);
;
?>
