<?php
global $db,$sugar_config,$app_list_strings;
$folderMasterArray = array('Finance_Payment_Acknowledgement' => 'Challan', 'Finance_Invoice_To' => 'Purchase', 'Finance_TDS_Challan' => 'Challan', 'Finance_GST_Challan' => 'Challan', 'Finance_Form16' => 'Challan','Finance_Invoice_From' => 'Sales','Finance_Upwork' => 'Sales','Finance_Expense' => 'Purchase','Finance_Bank_Statement' => 'BankStatements');
$valid_files = array();
$sql = "select id,document_revision_id,document_name,document_type from documents where deleted=0 AND category_id='Finance' AND month = '".$_POST['month']."' AND year = '".$_POST['year']."'";
$result = $db->query($sql);
while($row = $db->fetchByAssoc($result)) 
{
	if(file_exists($sugar_config['upload_dir'].$row['document_revision_id'])) {
        $valid_files[] = $row;
      }
}
$salary_files = array();
$salarySql = "select id,name from ssi_salary_slip where deleted=0 AND month='".$_POST['month']."' AND year = '".$_POST['year']."' AND status='Generated'";
$salaryRes = $db->query($salarySql);
while($salaryRow = $db->fetchByAssoc($salaryRes)) 
{
	if(file_exists($sugar_config['upload_dir'].$salaryRow['id'])) {
        $salary_files[] = $salaryRow;
      }
}
if(count($valid_files) || count($salary_files)) {
	$zip_name = 'SixthSenseInfo_'.$app_list_strings['month_list'][$_POST['month']].'_'.$_POST['year'].'.zip';
    $zip = new ZipArchive();
    if($zip->open($zip_name,ZIPARCHIVE::CREATE) !== true) {
      return false;
    }
    $zip->addEmptyDir("Purchase/NoPrint");
    $zip->addEmptyDir("Challan");
    $zip->addEmptyDir("Sales");
    $zip->addEmptyDir("Salary/NoPrint");
    $zip->addEmptyDir("BankStatements");
    foreach($valid_files as $key => $data)
    {
    	$file = $sugar_config['upload_dir'].$data['document_revision_id'];
    	$filename = $folderMasterArray[$data['document_type']].'/'.$data['document_name'];
      $filenameForFuel_food = $folderMasterArray[$data['document_type']].'/NoPrint/'.$data['document_name'];
      if(strpos(strtolower($filename),"fuel") || strpos(strtolower($filename),"food")){
      $zip->addFile($file,$filenameForFuel_food);
      }else{
      $zip->addFile($file,$filename);
      }
    }
    foreach($salary_files as $key=>$data)
    {
    	$file = $sugar_config['upload_dir'].$data['id'];
    	$filename = "Salary/NoPrint/".str_replace(" ", "_", $data['name']).".pdf";
    	$zip->addFile($file,$filename);	
    }
    generateSalaryCSV($_POST['month'],$_POST['year']);
    $csvFile = 'SixthSenseInfo_Salary_'.$app_list_strings['month_list'][$_POST['month']].'_'.$_POST['year'].'.csv';
    if(file_exists($sugar_config['upload_dir'].$csvFile)) {
      $csvFileName = "Salary/".$csvFile;
      $zip->addFile($sugar_config['upload_dir'].$csvFile,$csvFileName); 
    }
    generateSalaryPDF($_POST['month'],$_POST['year']);
    $pdfFile = 'SixthSenseInfo_Salary_'.$app_list_strings['month_list'][$_POST['month']].'_'.$_POST['year'].'.pdf';
    if(file_exists($sugar_config['upload_dir'].$pdfFile)) {
      $pdfFileName = "Salary/".$pdfFile;
      $zip->addFile($sugar_config['upload_dir'].$pdfFile,$pdfFileName); 
    }


    $zip->close();   
    header('Content-Type: application/zip');
  	header('Content-disposition: attachment; filename='.$zip_name);
  	header('Content-Length: ' . filesize($zip_name));
  	readfile($zip_name);
  	unlink($zip_name);    
    unlink($sugar_config['upload_dir'].$csvFile);
    unlink($sugar_config['upload_dir'].$pdfFile);
} else {
	SugarApplication::appendErrorMessage('There are no documents available...!');  	
	SugarApplication::redirect('index.php?entryPoint=ssiExportDocumentsEntry');
}
