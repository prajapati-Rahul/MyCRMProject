<?php

$dictionary['Contact']['fields']['contact_type'] = 
array (
    'required' => true,
    'name' => 'contact_type',
    'vname' => 'LBL_CONTACT_TYPE',
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
    'options' => 'contact_type_list',
    'studio' => 'visible',
    'dependency' => false,
    'default' => '',
);

$dictionary['Contact']['fields']['pan_card_number'] = 
array (
    'required' => false,
    'name' => 'pan_card_number',
    'vname' => 'LBL_PAN_CARD_NUMBER',
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
    'len' => '13',
    'size' => '20',
);

$dictionary['Contact']['fields']['bank_account_number'] = 
array (
    'required' => false,
    'name' => 'bank_account_number',
    'vname' => 'LBL_BANK_ACCOUNT_NUMBER',
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
    'len' => '30',
    'size' => '20',
);

$dictionary['Contact']['fields']['bank_name'] = 
array (
    'required' => false,
    'name' => 'bank_name',
    'vname' => 'LBL_BANK_NAME',
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
    'len' => '255',
    'size' => '20',
);

$dictionary['Contact']['fields']['bank_ifc_code'] = 
array (
    'required' => false,
    'name' => 'bank_ifc_code',
    'vname' => 'LBL_BANK_IFC_CODE',
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
    'len' => '30',
    'size' => '20',
);

$dictionary['Contact']['fields']['date_of_joining'] = 
array (
    'name' => 'date_of_joining',
    'vname' => 'LBL_DATE_OF_JOINING',
    'type' => 'date',
    'massupdate' => true,
    'audited' => true,
    'importable' => true,
);

$dictionary['Contact']['fields']['status'] = 
array (
  'required' => false,
  'name' => 'status',
  'vname' => 'LBL_STATUS',
  'type' => 'enum',
  'massupdate' => 0,
  'default' => 'Active',
  'no_default' => false,
  'comments' => '',
  'help' => '',
  'importable' => 'true',
  'duplicate_merge' => 'disabled',
  'duplicate_merge_dom_value' => '0',
  'audited' => false,
  'inline_edit' => true,
  'reportable' => true,
  'unified_search' => false,
  'merge_filter' => 'disabled',
  'len' => 100,
  'size' => '20',
  'options' => 'status_list',
  'studio' => 'visible',
  'dependency' => false,
);


