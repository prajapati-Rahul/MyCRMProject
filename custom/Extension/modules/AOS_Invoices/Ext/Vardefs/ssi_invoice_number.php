<?php 
$dictionary['AOS_Invoices']['fields']['ssi_invoice_number'] = 
array (
    'required' => false,
    'name' => 'ssi_invoice_number',
    'vname' => 'LBL_SSI_INVOICE_NUMBER',
    'type' => 'varchar',
    'len' => 11,
    'isnull' => 'false',
    'unified_search' => true,
    'comments' => '',
    'importable' => 'true',
    'duplicate_merge' => 'disabled',
    'reportable' => true,
    'disable_num_format' => true,
);
$dictionary['AOS_Invoices']['fields']['sgst_tax_amount'] = 
array (
  'required' => false,
  'name' => 'sgst_tax_amount',
  'vname' => 'LBL_TAX_AMOUNT',
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
$dictionary['AOS_Invoices']['fields']['cgst_tax_amount'] = 
array (
  'required' => false,
  'name' => 'cgst_tax_amount',
  'vname' => 'LBL_TAX_AMOUNT',
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
$dictionary['AOS_Invoices']['fields']['total_qty'] = 
array (
  'required' => false,
  'name' => 'total_qty',
  'vname' => 'LBL_TOTAL_QTY',
  'type' => 'decimal',
  'massupdate' => 0,
  'comments' => '',
  'help' => '',
  'importable' => 'true',
  'duplicate_merge' => 'disabled',
  'duplicate_merge_dom_value' => '0',
  'audited' => false,
  'reportable' => true,
  'len' => '18',
  'size' => '20',
  'enable_range_search' => false,
  'precision' => '2',
);