<?php
global $db,$app_list_strings;
$sql = "select id from ssi_salary_slip WHERE deleted=0 AND month = '".$_POST['month']."' AND year = '".$_POST['year']."'";
$res = $db->query($sql);
if ($res->num_rows > 0) {
	header('Content-Type: text/csv; charset=utf-8');
    header('Content-Disposition: attachment; filename=SixthSenseInfo_Salary_'.$app_list_strings['month_list'][$_POST['month']].'_'.$_POST['year'].'.csv');
    $output = fopen('php://output', 'w');
    $data_array = array(
		"PAN Card",
		"Full Name",
		"Month-Year",
		"Gross Salary",
		"Professional Tax",
		"TDS",
		"Net Salary"
		
    );
    fputcsv($output, $data_array);
    // Initialize sum variables
    $sum_professional_tax = 0;
    $sum_gross_earning = 0;
    $sum_tds = 0;
    $sum_net_amount = 0;
    while($row = $db->fetchByAssoc($res))
	{
		$id = $row['id'];
		$oSalarySlip = BeanFactory::getBean('SSI_Salary_Slip',$id);
		$contactId = $oSalarySlip->contacts_ssi_salary_slip_1contacts_ida;
		$contactSql = "select first_name,last_name,pan_card_number from contacts where id = '".$contactId."'";
		$contactRow = $db->fetchByAssoc($db->query($contactSql));
		$data_array = array();
		$data_array[] = $contactRow['pan_card_number'];
		$data_array[] = $contactRow['first_name']." ".$contactRow['last_name'];
		$data_array[] = $app_list_strings['month_list'][$_POST['month']].'-'.$_POST['year'];
		$data_array[] = format_number($oSalarySlip->sal_gross_earning);
		$data_array[] = format_number($oSalarySlip->ded_professional_tax);
		$data_array[] = format_number($oSalarySlip->ded_tds);
		$data_array[] = format_number($oSalarySlip->sal_net_amount);
		// Accumulate sum values
        $sum_gross_earning += $oSalarySlip->sal_gross_earning;
        $sum_professional_tax += $oSalarySlip->ded_professional_tax;
        $sum_tds += $oSalarySlip->ded_tds;
        $sum_net_amount += $oSalarySlip->sal_net_amount;
		fputcsv($output, $data_array);
	}
        fputcsv($output, array(
        "",
        "Total",
        "",
        format_number($sum_gross_earning),
        format_number($sum_professional_tax),
        format_number($sum_tds),
        format_number($sum_net_amount)
    ));
} else {
	SugarApplication::appendErrorMessage('There are no documents available...!');  	
  	SugarApplication::redirect('index.php?entryPoint=ssiExportDocumentsEntry');
}
