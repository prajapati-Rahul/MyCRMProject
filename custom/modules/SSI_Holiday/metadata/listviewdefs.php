<?php
$module_name = 'SSI_Holiday';
$listViewDefs [$module_name] = 
array (
  'NAME' => 
  array (
    'width' => '32%',
    'label' => 'LBL_NAME',
    'default' => true,
    'link' => true,
  ),
  'HOLIDAY_DATE' => 
  array (
    'type' => 'date',
    'label' => 'LBL_HOLIDAY_DATE',
    'width' => '10%',
    'default' => true,
  ),
  'DAY' => 
  array (
    'type' => 'int',
    'label' => 'LBL_DAY',
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
    'studio' => 'visible',
    'label' => 'LBL_YEAR',
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
