<?php

if (!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
require_once ('include/TemplateHandler/TemplateHandler.php');

class customSSI_Salary_StructureViewShowerror extends SugarView
{
    public function __construct()
    {
        parent::SugarView();
        $this->th = new TemplateHandler();
        $this->th->ss = & $this->ss;
    }
    public function display()
    {
        $this->ss->assign('ERROR_MSG', 'No records found with the salary slip generation criteria!');
        echo $this->th->displayTemplate("SSI_Salary_Structure", "showerror", "custom/modules/SSI_Salary_Structure/tpls/showerror.tpl");
    }
   
}