<?php
if (!defined('sugarEntry') || !sugarEntry) {
    die('Not A Valid Entry Point');
}

global $mod_strings, $app_strings, $sugar_config;
 
/*if(ACLController::checkAccess('SSI_Salary_Slip', 'edit', true)){
    $module_menu[]=array('index.php?module=SSI_Salary_Slip&action=EditView&return_module=SSI_Salary_Slip&return_action=DetailView', $mod_strings['LNK_NEW_RECORD'], 'Add', 'SSI_Salary_Slip');
}
*/
if(ACLController::checkAccess('SSI_Salary_Slip', 'list', true)){
    $module_menu[]=array('index.php?module=SSI_Salary_Slip&action=index&return_module=SSI_Salary_Slip&return_action=DetailView', $mod_strings['LNK_LIST'],'View', 'SSI_Salary_Slip');
}
/*if(ACLController::checkAccess('SSI_Salary_Slip', 'import', true)){
    $module_menu[]=array('index.php?module=Import&action=Step1&import_module=SSI_Salary_Slip&return_module=SSI_Salary_Slip&return_action=index', $app_strings['LBL_IMPORT'], 'Import', 'SSI_Salary_Slip');
}*/