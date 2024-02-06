<?php
// created: 2022-04-14 13:33:04
$dictionary["SSI_Salary_Slip"]["fields"]["contacts_ssi_salary_slip_1"] = array (
  'name' => 'contacts_ssi_salary_slip_1',
  'type' => 'link',
  'relationship' => 'contacts_ssi_salary_slip_1',
  'source' => 'non-db',
  'module' => 'Contacts',
  'bean_name' => 'Contact',
  'vname' => 'LBL_CONTACTS_SSI_SALARY_SLIP_1_FROM_CONTACTS_TITLE',
  'id_name' => 'contacts_ssi_salary_slip_1contacts_ida',
);
$dictionary["SSI_Salary_Slip"]["fields"]["contacts_ssi_salary_slip_1_name"] = array (
  'name' => 'contacts_ssi_salary_slip_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_CONTACTS_SSI_SALARY_SLIP_1_FROM_CONTACTS_TITLE',
  'save' => true,
  'id_name' => 'contacts_ssi_salary_slip_1contacts_ida',
  'link' => 'contacts_ssi_salary_slip_1',
  'table' => 'contacts',
  'module' => 'Contacts',
  'rname' => 'name',
  'db_concat_fields' => 
  array (
    0 => 'first_name',
    1 => 'last_name',
  ),
);
$dictionary["SSI_Salary_Slip"]["fields"]["contacts_ssi_salary_slip_1contacts_ida"] = array (
  'name' => 'contacts_ssi_salary_slip_1contacts_ida',
  'type' => 'link',
  'relationship' => 'contacts_ssi_salary_slip_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_CONTACTS_SSI_SALARY_SLIP_1_FROM_SSI_SALARY_SLIP_TITLE',
);
