<?php
// created: 2022-08-13 09:36:37
$subpanel_layout['list_fields'] = array (
  'ssi_invoice_number' => 
  array (
    'type' => 'varchar',
    'vname' => 'LBL_SSI_INVOICE_NUMBER',
    'width' => '10%',
    'default' => true,
  ),
  'name' => 
  array (
    'vname' => 'LBL_NAME',
    'widget_class' => 'SubPanelDetailViewLink',
    'width' => '25%',
    'default' => true,
  ),
  'invoice_date' => 
  array (
    'type' => 'date',
    'vname' => 'LBL_INVOICE_DATE',
    'width' => '10%',
    'default' => true,
  ),
  'total_amount' => 
  array (
    'type' => 'currency',
    'vname' => 'LBL_GRAND_TOTAL',
    'currency_format' => true,
    'width' => '15%',
    'default' => true,
  ),
  'status' => 
  array (
    'width' => '15%',
    'vname' => 'LBL_STATUS',
    'default' => true,
  ),
  'edit_button' => 
  array (
    'widget_class' => 'SubPanelEditButton',
    'module' => 'AOS_Invoices',
    'width' => '4%',
    'default' => true,
  ),
  'remove_button' => 
  array (
    'widget_class' => 'SubPanelRemoveButton',
    'module' => 'AOS_Invoices',
    'width' => '5%',
    'default' => true,
  ),
  'currency_id' => 
  array (
    'usage' => 'query_only',
  ),
);