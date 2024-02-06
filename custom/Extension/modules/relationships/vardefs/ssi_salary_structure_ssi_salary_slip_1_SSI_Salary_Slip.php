<?php
// created: 2022-04-14 13:35:28
$dictionary["SSI_Salary_Slip"]["fields"]["ssi_salary_structure_ssi_salary_slip_1"] = array (
  'name' => 'ssi_salary_structure_ssi_salary_slip_1',
  'type' => 'link',
  'relationship' => 'ssi_salary_structure_ssi_salary_slip_1',
  'source' => 'non-db',
  'module' => 'SSI_Salary_Structure',
  'bean_name' => 'SSI_Salary_Structure',
  'vname' => 'LBL_SSI_SALARY_STRUCTURE_SSI_SALARY_SLIP_1_FROM_SSI_SALARY_STRUCTURE_TITLE',
  'id_name' => 'ssi_salary_structure_ssi_salary_slip_1ssi_salary_structure_ida',
);
$dictionary["SSI_Salary_Slip"]["fields"]["ssi_salary_structure_ssi_salary_slip_1_name"] = array (
  'name' => 'ssi_salary_structure_ssi_salary_slip_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_SSI_SALARY_STRUCTURE_SSI_SALARY_SLIP_1_FROM_SSI_SALARY_STRUCTURE_TITLE',
  'save' => true,
  'id_name' => 'ssi_salary_structure_ssi_salary_slip_1ssi_salary_structure_ida',
  'link' => 'ssi_salary_structure_ssi_salary_slip_1',
  'table' => 'ssi_salary_structure',
  'module' => 'SSI_Salary_Structure',
  'rname' => 'name',
);
$dictionary["SSI_Salary_Slip"]["fields"]["ssi_salary_structure_ssi_salary_slip_1ssi_salary_structure_ida"] = array (
  'name' => 'ssi_salary_structure_ssi_salary_slip_1ssi_salary_structure_ida',
  'type' => 'link',
  'relationship' => 'ssi_salary_structure_ssi_salary_slip_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_SSI_SALARY_STRUCTURE_SSI_SALARY_SLIP_1_FROM_SSI_SALARY_SLIP_TITLE',
);
