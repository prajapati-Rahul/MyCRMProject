<?php
$module_name = 'SSI_Holiday';
$searchdefs [$module_name] = 
array (
  'layout' => 
  array (
    'basic_search' => 
    array (
      'name' => 
      array (
        'name' => 'name',
        'default' => true,
        'width' => '10%',
      ),
      'day' => 
      array (
        'type' => 'int',
        'label' => 'LBL_DAY',
        'width' => '10%',
        'default' => true,
        'name' => 'day',
      ),
      'month' => 
      array (
        'type' => 'enum',
        'studio' => 'visible',
        'label' => 'LBL_MONTH',
        'width' => '10%',
        'default' => true,
        'name' => 'month',
      ),
      'year' => 
      array (
        'type' => 'enum',
        'studio' => 'visible',
        'label' => 'LBL_YEAR',
        'width' => '10%',
        'default' => true,
        'name' => 'year',
      ),
    ),
    'advanced_search' => 
    array (
      'name' => 
      array (
        'name' => 'name',
        'default' => true,
        'width' => '10%',
      ),
      'day' => 
      array (
        'type' => 'int',
        'label' => 'LBL_DAY',
        'width' => '10%',
        'default' => true,
        'name' => 'day',
      ),
      'month' => 
      array (
        'type' => 'enum',
        'studio' => 'visible',
        'label' => 'LBL_MONTH',
        'width' => '10%',
        'default' => true,
        'name' => 'month',
      ),
      'year' => 
      array (
        'type' => 'enum',
        'studio' => 'visible',
        'label' => 'LBL_YEAR',
        'width' => '10%',
        'default' => true,
        'name' => 'year',
      ),
    ),
  ),
  'templateMeta' => 
  array (
    'maxColumns' => '3',
    'maxColumnsBasic' => '4',
    'widths' => 
    array (
      'label' => '10',
      'field' => '30',
    ),
  ),
);
;
?>
