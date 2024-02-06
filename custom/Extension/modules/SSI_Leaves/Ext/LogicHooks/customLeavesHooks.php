<?php 
$hook_array['before_save'][] = array(
    1,
    'Before save logic hook to set name',
    'custom/modules/SSI_Leaves/Hooks/customLeaveHook.php',
    'customLeaveHook',
    'generateName'
);

$hook_array['before_save'][] = array(
    3,
    'Before save logic hook to set month and year',
    'custom/modules/SSI_Leaves/Hooks/customLeaveHook.php',
    'customLeaveHook',
    'setFields'
);

