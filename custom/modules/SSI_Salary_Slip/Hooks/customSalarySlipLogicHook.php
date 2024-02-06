<?php 
class customSalarySlipHook
{
	public function calculateSalary($bean,$events,$arguments) 
	{

		$totalGrossEarning = $bean->sal_basic+$bean->sal_hra+$bean->sal_conv+$bean->sal_trans+$bean->sal_special+$bean->sal_medical;
		$totalGrossDeduction = $bean->ded_pf+$bean->ded_esi+$bean->ded_professional_tax+$bean->ded_tds;
		$bean->sal_gross_earning = $totalGrossEarning;
		$bean->sal_gross_deduction = $totalGrossDeduction;
		$bean->sal_net_amount = $totalGrossEarning-$totalGrossDeduction;
		$bean->net_amount_in_words = convertToNumber($bean->sal_net_amount)." Only";
	}

	public function generateActionLinks($bean,$events,$arguments) 
	{
		$Url = '';
		$contactId = $_REQUEST['record'];
        if($bean->status == 'Generated') {
        	$Url = "<a id='sent_email_".$bean->id."' onClick='SentSalarySlip(\"{$bean->id}\",\"{$contactId}\")' >Send Email</a>";
        } else if($bean->status == 'Pending') {
        	$Url = "<a href='index.php?entryPoint=generateSalarySlipEntry&uid={$bean->id}' id='generate_salarySlip_".$bean->id."'>Generate Salary Slip</a>";
        } 
        $bean->action = $Url;
	}
}	