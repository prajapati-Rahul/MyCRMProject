<?php 
if (!function_exists('dev')) {

    function dev($val, $die = true, $str = '') {
        echo "$str<pre>";
        print_r($val);
        echo "</pre>";
        echo "<br />===================================<br>";
        if ($die) {
            die("END");
        }
    }
}
// function to do print_r // we will remove at the end
if (!function_exists('devfatal')) {

    function devfatal($val, $str = '') {
        $GLOBALS['log']->fatal("devfatal -> \n" . $str . "\n" . print_r($val, true));
    }
}

function ind_money_format($number,$precision,$dec_sep,$num_grp_sep){
    $decimal = (string)($number - floor($number));
    $money = floor($number);
    $length = strlen($money);
    $delimiter = '';
    $money = strrev($money);
    $precision = $precision + 1;

    for($i=0;$i<$length;$i++){
        if(( $i==3 || ($i>3 && ($i-1)%2==0) )&& $i!=$length){
            $delimiter .=$num_grp_sep;
        }
        $delimiter .=$money[$i];
    }

    $result = strrev($delimiter);
    $decimal = preg_replace("/0\./i", $dec_sep, $decimal);
    $decimal = substr($decimal, 0, $precision);

    if( $decimal != '0'){
        $result = $result.$decimal;
    }
    return $result;
}

function convertToNumber($number) 
{
    $decimal = round($number - ($no = floor($number)), 2) * 100;
    $hundred = null;
    $digits_length = strlen($no);
    $i = 0;
    $str = array();
    $words = array(0 => '', 1 => 'One', 2 => 'Two',
        3 => 'Three', 4 => 'Four', 5 => 'Five', 6 => 'Six',
        7 => 'Seven', 8 => 'Eight', 9 => 'Nine',
        10 => 'Ten', 11 => 'Eleven', 12 => 'Twelve',
        13 => 'Thirteen', 14 => 'Fourteen', 15 => 'Fifteen',
        16 => 'Sixteen', 17 => 'Seventeen', 18 => 'Eighteen',
        19 => 'Nineteen', 20 => 'Twenty', 30 => 'Thirty',
        40 => 'Forty', 50 => 'Fifty', 60 => 'Sixty',
        70 => 'Seventy', 80 => 'Eighty', 90 => 'Ninety');
    $digits = array('', 'Hundred','Thousand','Lakh', 'Crore');
    while( $i < $digits_length ) {
        $divider = ($i == 2) ? 10 : 100;
        $number = floor($no % $divider);
        $no = floor($no / $divider);
        $i += $divider == 10 ? 1 : 2;
        if ($number) {
            $plural = (($counter = count($str)) && $number > 9) ? 's' : null;
            $hundred = ($counter == 1 && $str[0]) ? 'And ' : null;
            $str [] = ($number < 21) ? $words[$number].' '. $digits[$counter]. $plural.' '.$hundred:$words[floor($number / 10) * 10].' '.$words[$number % 10]. ' '.$digits[$counter].$plural.' '.$hundred;
        } else {
            $str[] = null;
        }   
    }
    $Rupees = trim(implode('', array_reverse($str)));
    $paise = ($decimal > 0) ? "And " . ($words[$decimal / 10] . " " . $words[$decimal % 10]) . ' Paise' : '';
    return ($Rupees ? $Rupees.' Rupees ' : '') . $paise;
}

function generateSalaryCSV($month,$year)
{
    global $db,$app_list_strings,$sugar_config;
    $sql = "select id from ssi_salary_slip WHERE deleted=0 AND month = '".$month."' AND year = '".$year."'";
    $res = $db->query($sql);
    if ($res->num_rows > 0) {

        $filename = 'SixthSenseInfo_Salary_'.$app_list_strings['month_list'][$month].'_'.$year.'.csv';
        $output = fopen($sugar_config['upload_dir'].$filename, 'w');
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
            $data_array[] = $app_list_strings['month_list'][$month].'-'.$year;
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

        fclose($output);
    }
}

function generateSalaryPDF($month, $year)
{
    require_once('modules/AOS_PDF_Templates/PDF_Lib/mpdf.php');
    global $db, $app_list_strings, $sugar_config;
    $sql = "select id from ssi_salary_slip WHERE deleted=0 AND month = '".$month."' AND year = '".$year."'";
    $res = $db->query($sql);
    if ($res->num_rows > 0) {
        $pdfFileName = 'SixthSenseInfo_Salary_'.$app_list_strings['month_list'][$month].'_'.$year.'.pdf';
        $pdfFileHeader = '';
        $pdfOutputPath = $sugar_config['upload_dir'].$pdfFileName;
        $pdf = new mPDF('en', 'A4-L');
        $pdf->SetAutoFont();
        $pdf->SetHTMLFooter();
        $pdf->SetHTMLHeader($pdfFileHeader);
        // Start the table
        $html = '<br/><br /><table style="border: 1px solid #000000; border-collapse: collapse;" align="center"><tr><td style="text-align: center; border: 1px solid; padding: 10px;"><b>SixthSenseInfo Salary Details for '.$app_list_strings["month_list"][$month].'-'.$year.'</b></td></tr></table><br/><br/>';
        $html .= '<table style="border: 1px solid #000000; border-collapse: collapse;" align="center">';
        // table headers
        $html .= '<tr>';
        $html .= '<th style="border: 1px solid; padding: 10px;">PAN Card</th>';
        $html .= '<th style="border: 1px solid; padding: 10px;">Full Name</th>';
        $html .= '<th style="border: 1px solid; padding: 10px;">Month-Year</th>';
        $html .= '<th style="border: 1px solid; padding: 10px;">Gross Salary</th>';
        $html .= '<th style="border: 1px solid; padding: 10px;">Professional Tax</th>';
        $html .= '<th style="border: 1px solid; padding: 10px;">TDS</th>';
        $html .= '<th style="border: 1px solid; padding: 10px;">Net Salary</th>';
        $html .= '</tr>';

        // Variables for sum 
        $sum_professional_tax = 0;
        $sum_gross_earning = 0;
        $sum_tds = 0;
        $sum_net_amount = 0;

        while ($row = $db->fetchByAssoc($res)) {
            $id = $row['id'];
            $oSalarySlip = BeanFactory::getBean('SSI_Salary_Slip', $id);
            $contactId = $oSalarySlip->contacts_ssi_salary_slip_1contacts_ida;
            $contactSql = "select first_name,last_name,pan_card_number from contacts where id = '".$contactId."'";
            $contactRow = $db->fetchByAssoc($db->query($contactSql));
            //table row
            $html .= '<tr>';
            $html .= '<td style="text-align: center; border: 1px solid; padding: 10px;">' . $contactRow['pan_card_number'] . '</td>';
            $html .= '<td style="text-align: center; border: 1px solid; padding: 10px;">' . $contactRow['first_name']." ".$contactRow['last_name'] . '</td>';
            $html .= '<td style="text-align: center; border: 1px solid; padding: 10px;">' . $app_list_strings['month_list'][$month].'-'.$year . '</td>';
            $html .= '<td style="text-align: center; border: 1px solid; padding: 10px;">' . format_number($oSalarySlip->sal_gross_earning) . '</td>';
            $html .= '<td style="text-align: center; border: 1px solid; padding: 10px;">' . format_number($oSalarySlip->ded_professional_tax) . '</td>';
            $html .= '<td style="text-align: center; border: 1px solid; padding: 10px;">' . format_number($oSalarySlip->ded_tds) . '</td>';
            $html .= '<td style="text-align: center; border: 1px solid; padding: 10px;">' . format_number($oSalarySlip->sal_net_amount) . '</td>';
            $html .= '</tr>';
            // Sum of values
            $sum_gross_earning += $oSalarySlip->sal_gross_earning;
            $sum_professional_tax += $oSalarySlip->ded_professional_tax;
            $sum_tds += $oSalarySlip->ded_tds;
            $sum_net_amount += $oSalarySlip->sal_net_amount;
        }
        $html .= '<tr>';
        $html .= '<td style="text-align: center; border: 1px solid; padding: 10px;" colspan="3"><b>Total</b></td>';
        $html .= '<td style="text-align: center; border: 1px solid; padding: 10px;"><b>' . format_number($sum_gross_earning) . '</b></td>';
        $html .= '<td style="text-align: center; border: 1px solid; padding: 10px;"><b>' . format_number($sum_professional_tax) . '</b></td>';
        $html .= '<td style="text-align: center; border: 1px solid; padding: 10px;"><b>' . format_number($sum_tds) . '</b></td>';
        $html .= '<td style="text-align: center; border: 1px solid; padding: 10px;"><b>' . format_number($sum_net_amount) . '</b></td>';
        $html .= '</tr>';
        $html .= '</table>';
        $pdf->WriteHTML($html);
        $pdf->Output($pdfOutputPath, 'F');
    }
}