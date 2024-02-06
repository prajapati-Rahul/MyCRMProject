<?php
// created: 2024-02-01 13:47:49
$searchdefs['Documents'] = array (
  'layout' => 
  array (
    'basic_search' => 
    array (
      0 => 
      array (
        'name' => 'document_name',
        'default' => true,
        'width' => '10%',
      ),
    ),
    'advanced_search' => 
    array (
      0 => 
      array (
        'name' => 'document_name',
        'default' => true,
        'width' => '10%',
      ),
      1 => 
      array (
        'name' => 'category_id',
        'default' => true,
        'width' => '10%',
      ),
      2 => 
      array (
        'type' => 'dynamicenum',
        'default' => true,
        'studio' => 'visible',
        'label' => 'LBL_DOCUMENT_TYPE',
        'width' => '10%',
        'name' => 'document_type',
      ),
      3 => 
      array (
        'type' => 'enum',
        'studio' => 'visible',
        'label' => 'LBL_EXPENSE_TYPE',
        'width' => '10%',
        'default' => true,
        'name' => 'expense_type',
      ),
      4 => 
      array (
        'type' => 'enum',
        'studio' => 'visible',
        'label' => 'LBL_MONTH',
        'width' => '10%',
        'default' => true,
        'name' => 'month',
      ),
      5 => 
      array (
        'type' => 'enum',
        'studio' => 'visible',
        'default' => true,
        'label' => 'LBL_YEAR',
        'width' => '10%',
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