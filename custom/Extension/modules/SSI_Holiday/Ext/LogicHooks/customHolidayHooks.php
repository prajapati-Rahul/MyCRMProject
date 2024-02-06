<?php 
$hook_array['before_save'][] = array(
    3,
    'Before save logic hook to set month and day',
    'custom/modules/SSI_Holiday/Hooks/customHolidayHook.php',
    'customHolidayHook',
    'setFields'
);
