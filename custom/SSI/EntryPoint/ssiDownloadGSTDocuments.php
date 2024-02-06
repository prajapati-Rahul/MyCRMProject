<?php
global $db,$sugar_config,$app_list_strings;
$folderMasterArray = array( 'Finance_Invoice_To' => 'Purchase', 'Finance_Invoice_From' => 'Sales','Finance_Upwork' => 'Sales','Finance_Expense' => 'Purchase');
$valid_files = array();
$sql = "select id,document_revision_id,document_name,document_type from documents where deleted=0 AND category_id='Finance' AND month = '".$_POST['month']."' AND year = '".$_POST['year']."' AND gst_compliance= '1' AND document_type NOT IN ('Finance_Payment_Acknowledgement','Finance_TDS_Challan','Finance_GST_Challan','Finance_Form16') AND (expense_type IS NULL OR expense_type != 'Donation')";
$result = $db->query($sql);
while($row = $db->fetchByAssoc($result)) 
{
	if(file_exists($sugar_config['upload_dir'].$row['document_revision_id'])) {
        $valid_files[] = $row;
      }
}

if(count($valid_files)) {
	$zip_name = 'SixthSenseInfo_GST_'.$app_list_strings['month_list'][$_POST['month']].'_'.$_POST['year'].'.zip';
    $zip = new ZipArchive();
    if($zip->open($zip_name,ZIPARCHIVE::CREATE) !== true) {
      return false;
    }
    $zip->addEmptyDir("Purchase");
    $zip->addEmptyDir("Sales");
    foreach($valid_files as $key => $data)
    {
    	$file = $sugar_config['upload_dir'].$data['document_revision_id'];
    	$filename = $folderMasterArray[$data['document_type']].'/'.$data['document_name'];
    	$zip->addFile($file,$filename);
    }
    $zip->close();   
    header('Content-Type: application/zip');
  	header('Content-disposition: attachment; filename='.$zip_name);
  	header('Content-Length: ' . filesize($zip_name));
  	readfile($zip_name);
  	unlink($zip_name);    
  } else {
  	SugarApplication::appendErrorMessage('There are no documents available...!');  	
  	SugarApplication::redirect('index.php?entryPoint=ssiExportDocumentsEntry');
  }
