<?php
// created: 2022-04-14 13:35:28
$dictionary["ssi_salary_structure_ssi_salary_slip_1"] = array (
  'true_relationship_type' => 'one-to-many',
  'from_studio' => true,
  'relationships' => 
  array (
    'ssi_salary_structure_ssi_salary_slip_1' => 
    array (
      'lhs_module' => 'SSI_Salary_Structure',
      'lhs_table' => 'ssi_salary_structure',
      'lhs_key' => 'id',
      'rhs_module' => 'SSI_Salary_Slip',
      'rhs_table' => 'ssi_salary_slip',
      'rhs_key' => 'id',
      'relationship_type' => 'many-to-many',
      'join_table' => 'ssi_salary_structure_ssi_salary_slip_1_c',
      'join_key_lhs' => 'ssi_salary_structure_ssi_salary_slip_1ssi_salary_structure_ida',
      'join_key_rhs' => 'ssi_salary_structure_ssi_salary_slip_1ssi_salary_slip_idb',
    ),
  ),
  'table' => 'ssi_salary_structure_ssi_salary_slip_1_c',
  'fields' => 
  array (
    0 => 
    array (
      'name' => 'id',
      'type' => 'varchar',
      'len' => 36,
    ),
    1 => 
    array (
      'name' => 'date_modified',
      'type' => 'datetime',
    ),
    2 => 
    array (
      'name' => 'deleted',
      'type' => 'bool',
      'len' => '1',
      'default' => '0',
      'required' => true,
    ),
    3 => 
    array (
      'name' => 'ssi_salary_structure_ssi_salary_slip_1ssi_salary_structure_ida',
      'type' => 'varchar',
      'len' => 36,
    ),
    4 => 
    array (
      'name' => 'ssi_salary_structure_ssi_salary_slip_1ssi_salary_slip_idb',
      'type' => 'varchar',
      'len' => 36,
    ),
  ),
  'indices' => 
  array (
    0 => 
    array (
      'name' => 'ssi_salary_structure_ssi_salary_slip_1spk',
      'type' => 'primary',
      'fields' => 
      array (
        0 => 'id',
      ),
    ),
    1 => 
    array (
      'name' => 'ssi_salary_structure_ssi_salary_slip_1_ida1',
      'type' => 'index',
      'fields' => 
      array (
        0 => 'ssi_salary_structure_ssi_salary_slip_1ssi_salary_structure_ida',
      ),
    ),
    2 => 
    array (
      'name' => 'ssi_salary_structure_ssi_salary_slip_1_alt',
      'type' => 'alternate_key',
      'fields' => 
      array (
        0 => 'ssi_salary_structure_ssi_salary_slip_1ssi_salary_slip_idb',
      ),
    ),
  ),
);