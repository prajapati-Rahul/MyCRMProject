<?php
 // created: 2022-04-14 13:31:06
$layout_defs["Contacts"]["subpanel_setup"]['contacts_ssi_salary_structure_1'] = array (
  'order' => 100,
  'module' => 'SSI_Salary_Structure',
  'subpanel_name' => 'default',
  'sort_order' => 'asc',
  'sort_by' => 'id',
  'title_key' => 'LBL_CONTACTS_SSI_SALARY_STRUCTURE_1_FROM_SSI_SALARY_STRUCTURE_TITLE',
  'get_subpanel_data' => 'contacts_ssi_salary_structure_1',
  'top_buttons' => 
  array (
    0 => 
    array (
      'widget_class' => 'SubPanelTopButtonQuickCreate',
    ),
    1 => 
    array (
      'widget_class' => 'SubPanelTopSelectButton',
      'mode' => 'MultiSelect',
    ),
  ),
);
