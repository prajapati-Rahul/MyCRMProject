<?php 
$dictionary['AOS_Products_Quotes']['fields']['sgst_vat_amt'] = 
array (
	'required' => '1',
	'name' => 'sgst_vat_amt',
	'vname' => 'LBL_VAT_AMT',
	'type' => 'currency',
	'massupdate' => 0,
	'comments' => '',
	'help' => '',
	'importable' => 'true',
	'duplicate_merge' => 'disabled',
	'duplicate_merge_dom_value' => '0',
	'audited' => 1,
	'reportable' => true,
	'len' => '26,6',    
);
$dictionary['AOS_Products_Quotes']['fields']['sgst_vat_amt_usdollar'] =
array (
  'name' => 'sgst_vat_amt_usdollar',
  'vname' => 'LBL_VAT_AMT_USDOLLAR',
  'type' => 'currency',
  'group' => 'vat_amt',
  'disable_num_format' => true,
  'duplicate_merge' => '0',
  'audited' => true,
  'comment' => '',
  'studio' => 
  array (
    'editview' => false,
    'detailview' => false,
    'quickcreate' => false,
  ),
  'len' => '26,6',
);
$dictionary['AOS_Products_Quotes']['fields']['sgst_vat'] =
array (
	'required' => false,
	'name' => 'sgst_vat',
	'vname' => 'LBL_VAT',
	'type' => 'decimal',
	'massupdate' => 0,
	'comments' => '',
	'help' => '',
	'importable' => 'true',
	'duplicate_merge' => 'disabled',
	'duplicate_merge_dom_value' => '0',
	'audited' => 0,
	'studio' => 'visible',
	'reportable' => true,
	'len' => '18',
	'size' => '20',
	'enable_range_search' => false,
	'precision' => '2',
);

$dictionary['AOS_Products_Quotes']['fields']['cgst_vat_amt'] = 
array (
	'required' => '1',
	'name' => 'cgst_vat_amt',
	'vname' => 'LBL_VAT_AMT',
	'type' => 'currency',
	'massupdate' => 0,
	'comments' => '',
	'help' => '',
	'importable' => 'true',
	'duplicate_merge' => 'disabled',
	'duplicate_merge_dom_value' => '0',
	'audited' => 1,
	'reportable' => true,
	'len' => '26,6',    
);
$dictionary['AOS_Products_Quotes']['fields']['cgst_vat_amt_usdollar'] =
array (
  'name' => 'cgst_vat_amt_usdollar',
  'vname' => 'LBL_VAT_AMT_USDOLLAR',
  'type' => 'currency',
  'group' => 'vat_amt',
  'disable_num_format' => true,
  'duplicate_merge' => '0',
  'audited' => true,
  'comment' => '',
  'studio' => 
  array (
    'editview' => false,
    'detailview' => false,
    'quickcreate' => false,
  ),
  'len' => '26,6',
);
$dictionary['AOS_Products_Quotes']['fields']['cgst_vat'] =
array (
	'required' => false,
	'name' => 'cgst_vat',
	'vname' => 'LBL_VAT',
	'type' => 'decimal',
	'massupdate' => 0,
	'comments' => '',
	'help' => '',
	'importable' => 'true',
	'duplicate_merge' => 'disabled',
	'duplicate_merge_dom_value' => '0',
	'audited' => 0,
	'reportable' => true,
	'len' => '18',
	'size' => '20',
	'enable_range_search' => false,
	'precision' => '2',
);

    