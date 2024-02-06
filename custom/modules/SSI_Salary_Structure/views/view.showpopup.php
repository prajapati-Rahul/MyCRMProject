<?php

if (!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
require_once ('include/TemplateHandler/TemplateHandler.php');

class customSSI_Salary_StructureViewShowpopup extends SugarView
{
    public function __construct()
    {
        parent::SugarView();
        $this->th = new TemplateHandler();
        $this->th->ss = & $this->ss;
    }
    public function display()
    {
        $monthDom = $this->getDom('month_list');
        $this->ss->assign('MONTH_DOM', $monthDom);
        $yearDom = $this->getDom('year_list');
        $this->ss->assign('YEAR_DOM', $yearDom);
        $this->ss->assign('uid', $_REQUEST['uid']);
        echo $this->th->displayTemplate("SSI_Salary_Structure", "showpopup", "custom/modules/SSI_Salary_Structure/tpls/showpopup.tpl");
    } 
    public function getDom($domName) 
    {
        global $app_list_strings;
        $resultHtml = '';
        foreach($app_list_strings[$domName] as $key => $value)
        {
            if($key == date("Y")) {
                $resultHtml .= '<option value="'.$key.'" selected>'.$value.'</option>';
            } else {
                $resultHtml .= '<option value="'.$key.'">'.$value.'</option>';    
            }
            
        }
        return $resultHtml;
    }  
}