<?php 
$dictionary['SSI_Salary_Slip']['fields']['payment_date'] = 
array (
    'name' => 'payment_date',
    'vname' => 'LBL_PAYMENT_DATE',
    'type' => 'date',
    'massupdate' => true,
    'audited' => true,
    'importable' => true,
);
$dictionary['SSI_Salary_Slip']['fields']['is_generated'] = 
array (
    'name' => 'is_generated',
    'vname' => 'LBL_IS_GENERATED',
    'type' => 'bool',
    'default' => '0',
    'audited' => true,
);
$dictionary['SSI_Salary_Slip']['fields']['status'] = 
array (
    'required' => true,
    'name' => 'status',
    'vname' => 'LBL_STATUS',
    'type' => 'enum',
    'massupdate' => 0,
    'no_default' => false,
    'comments' => '',
    'help' => '',
    'importable' => 'true',
    'duplicate_merge' => 'disabled',
    'duplicate_merge_dom_value' => '0',
    'audited' => false,
    'inline_edit' => '',
    'reportable' => true,
    'unified_search' => false,
    'merge_filter' => 'disabled',
    'len' => 20,
    'size' => '20',
    'options' => 'ss_status_list',
    'studio' => 'visible',
    'dependency' => false,
    'default' => 'Pending',
);
$dictionary['SSI_Salary_Slip']['fields']['action'] = 
array (
  'inline_edit' => '1',
  'required' => false,
  'name' => 'action',
  'vname' => 'LBL_ACTION',
  'type' => 'varchar',
  'massupdate' => '0',
  'default' => '',
  'no_default' => false,
  'comments' => '',
  'help' => '',
  'importable' => 'true',
  'duplicate_merge' => 'disabled',
  'duplicate_merge_dom_value' => '0',
  'audited' => false,
  'reportable' => true,
  'unified_search' => false,
  'merge_filter' => 'disabled',
  'len' => '10',
  'size' => '20',
);

$dictionary['SSI_Salary_Slip']['fields']['trans_ref_no'] = 
array (
    'required' => false,
    'name' => 'trans_ref_no',
    'vname' => 'LBL_TRANS_REF_NO',
    'type' => 'varchar',
    'massupdate' => 0,
    'no_default' => false,
    'comments' => '',
    'help' => '',
    'importable' => 'true',
    'duplicate_merge' => 'disabled',
    'duplicate_merge_dom_value' => '0',
    'audited' => false,
    'inline_edit' => '',
    'reportable' => true,
    'unified_search' => false,
    'merge_filter' => 'disabled',
    'len' => '50',
    'size' => '20',
);