<?php
$module_name = 'SSI_Salary_Structure';
$viewdefs [$module_name] = 
array (
  'DetailView' => 
  array (
    'templateMeta' => 
    array (
      'form' => 
      array (
        'buttons' => 
        array (
          0 => 'EDIT',
          1 => 'DUPLICATE',
          2 => 'DELETE',
          3 => 'FIND_DUPLICATES',
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
      'syncDetailEditViews' => true,
    ),
    'panels' => 
    array (
      'default' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'name',
            'label' => 'LBL_NAME',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'status',
            'studio' => 'visible',
            'label' => 'LBL_STATUS',
          ),
          1 => 
          array (
            'name' => 'contacts_ssi_salary_structure_1_name',
          ),
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
        3 => 
        array (
          0 => 
          array (
            'name' => 'sal_gross_earning',
            'label' => 'LBL_SAL_GROSS_EARNING',
          ),
          1 => 
          array (
            'name' => 'sal_net_amount',
            'label' => 'LBL_SAL_NET_AMOUNT',
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
        2 => 
        array (
          0 => 
          array (
            'name' => 'sal_gross_deduction',
            'label' => 'LBL_SAL_GROSS_DEDUCTION',
          ),
        ),
      ),
    ),
  ),
);
;
?>
