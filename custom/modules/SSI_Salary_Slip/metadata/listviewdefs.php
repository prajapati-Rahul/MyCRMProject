<?php
$module_name = 'SSI_Salary_Slip';
$listViewDefs [$module_name] = 
array (
  'NAME' => 
  array (
    'width' => '32%',
    'label' => 'LBL_NAME',
    'default' => true,
    'link' => true,
  ),
  'CONTACTS_SSI_SALARY_SLIP_1_NAME' => 
  array (
    'type' => 'relate',
    'link' => true,
    'label' => 'LBL_CONTACTS_SSI_SALARY_SLIP_1_FROM_CONTACTS_TITLE',
    'id' => 'CONTACTS_SSI_SALARY_SLIP_1CONTACTS_IDA',
    'width' => '10%',
    'default' => true,
  ),
  'MONTH' => 
  array (
    'type' => 'enum',
    'studio' => 'visible',
    'label' => 'LBL_MONTH',
    'width' => '10%',
    'default' => true,
  ),
  'YEAR' => 
  array (
    'type' => 'enum',
    'default' => true,
    'studio' => 'visible',
    'label' => 'LBL_YEAR',
    'width' => '10%',
  ),
  'STATUS' => 
  array (
    'type' => 'enum',
    'studio' => 'visible',
    'default' => true,
    'label' => 'LBL_STATUS',
    'width' => '10%',
  ),
  'PAYMENT_DATE' => 
  array (
    'type' => 'date',
    'label' => 'LBL_PAYMENT_DATE',
    'width' => '10%',
    'default' => true,
  ),
  'ASSIGNED_USER_NAME' => 
  array (
    'width' => '9%',
    'label' => 'LBL_ASSIGNED_TO_NAME',
    'module' => 'Employees',
    'id' => 'ASSIGNED_USER_ID',
    'default' => false,
  ),
);
;
?>
