<?php
require_once('include/MVC/View/views/view.list.php');
class CustomSSI_Salary_StructureViewList extends ViewList
{
    /**
     * @see ViewList::preDisplay()
     */
    public function preDisplay()
    {
        echo '<script type="text/javascript" src="custom/modules/SSI_Salary_Structure/js/updateInformation.js"></script>';
        parent::preDisplay();
        $this->lv->actionsMenuExtraItems[] = $this->builtMyMenuItem();    
    }

    private function builtMyMenuItem()
    {
        return <<<EOHTML
        <script type="text/javascript">
            function openPopup(){
                var URL = "index.php?module=SSI_Salary_Structure&action=generateSalarySlip&query=pt&to_pdf=true";
                openPopupDialog(URL, 550, 'auto', 'showpopup', 'Mass action selection', '','', true, '', false);    
            }
        </script>
        <a class="menuItem" id="salaryslip_action"  style="width: 150px;" href="#" onmouseover='hiliteItem(this,"yes");' onmouseout='unhiliteItem(this);' onclick="openPopup();">Generate Salary Slip</a>
        EOHTML;
       
    }
}