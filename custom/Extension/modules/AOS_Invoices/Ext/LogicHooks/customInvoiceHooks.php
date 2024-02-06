<?php 
$hook_array['before_save'][] = array(
    1,
    'Before save logic hook to set invoice number',
    'custom/modules/AOS_Invoices/Hooks/customInvoiceLogicHook.php',
    'customAosInvoiceHook',
    'generateInvoiceNumber'
);
