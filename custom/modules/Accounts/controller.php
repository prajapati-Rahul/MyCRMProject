<?php

class AccountsController extends SugarController {
	 public function action_ssi_export_documents()
   	{
		SugarApplication::redirect('index.php?entryPoint=ssiExportDocumentsEntry');     			
	}
}