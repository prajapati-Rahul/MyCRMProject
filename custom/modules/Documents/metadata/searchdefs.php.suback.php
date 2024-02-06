<?php
$searchdefs ['Documents'] = 
array (
  'layout' => 
  array (
    'basic_search' => 
    array (
      'document_name' => 
      array (
        'name' => 'document_name',
        'default' => true,
        'width' => '10%',
      ),
    ),
    'advanced_search' => 
    array (
      'document_name' => 
      array (
        'name' => 'document_name',
        'default' => true,
        'width' => '10%',
      ),
      'category_id' => 
      array (
        'name' => 'category_id',
        'default' => true,
        'width' => '10%',
      ),
      'document_type' => 
      array (
        'type' => 'dynamicenum',
        'default' => true,
        'studio' => 'visible',
        'label' => 'LBL_DOCUMENT_TYPE',
        'width' => '10%',
        'name' => 'document_type',
      ),
      'expense_type' => 
      array (
        'type' => 'enum',
        'studio' => 'visible',
        'label' => 'LBL_EXPENSE_TYPE',
        'width' => '10%',
        'default' => true,
        'name' => 'expense_type',
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
;
?>
