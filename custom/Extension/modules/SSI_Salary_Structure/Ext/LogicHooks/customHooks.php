<?php
$hook_array['before_save'][] = array(
    3,
    'Before save logic hook to inactive status of records related to salary stucture',
    'custom/modules/SSI_Salary_Structure/Hooks/customSalaryStructureLogicHook.php',
    'customSalaryStructureHook',
    'updateStatus'
);

$hook_array['before_save'][] = array(
    4,
    'Before save logic hook to Calculate Salary',
    'custom/modules/SSI_Salary_Structure/Hooks/customSalaryStructureLogicHook.php',
    'customSalaryStructureHook',
    'calculateSalary'
);