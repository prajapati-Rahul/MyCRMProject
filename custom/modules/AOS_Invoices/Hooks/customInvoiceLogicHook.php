<?php 
class customAosInvoiceHook 
{
	public function generateInvoiceNumber($bean,$events,$arguments) {
		global $db;
		if(empty($bean->fetched_row['id'])) {
			$year = date('Y');
	        $month = date('m');
	        if($month<4){
	            $year = $year-1;
	        }
	        $invoicePattern = "SSI".$year;
			$sql = "select id,ssi_invoice_number from aos_invoices where ssi_invoice_number LIKE '".$invoicePattern."%' ORDER BY ssi_invoice_number DESC LIMIT 0,1";
			$res = $db->query($sql);
			if($res->num_rows > 0) {
				$row = $db->fetchByAssoc($res);
				$invoiceNumber = $row['ssi_invoice_number'];
				$number = str_replace($invoicePattern,"",$invoiceNumber);
				$number = $number+1;
				$bean->ssi_invoice_number = $invoicePattern.''.str_pad($number,3,"0",STR_PAD_LEFT);
			} else {
				$bean->ssi_invoice_number = $invoicePattern."001";

			}
		}
	}
}