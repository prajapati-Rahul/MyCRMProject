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
      'year' => 
      array (
        'type' => 'enum',
        'studio' => 'visible',
        'label' => 'LBL_YEAR',
        'width' => '10%',
        'default' => true,
        'name' => 'year',
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
