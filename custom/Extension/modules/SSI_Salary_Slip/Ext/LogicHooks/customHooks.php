<?php 
$hook_array['before_save'][] = array(
    3,
    'Before save logic hook to Calculate Salary',
    'custom/modules/SSI_Salary_Slip/Hooks/customSalarySlipLogicHook.php',
    'customSalarySlipHook',
    'calculateSalary'
);

$hook_array['process_record'][] = array(
    14,
    'Process record logic hook to generate quick action links for subpanel in Contact',
    'custom/modules/SSI_Salary_Slip/Hooks/customSalarySlipLogicHook.php',
    'customSalarySlipHook',
    'generateActionLinks'
);