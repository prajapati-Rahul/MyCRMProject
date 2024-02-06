<?php
global $db,$app_list_strings;
require_once 'include/MVC/View/SugarView.php';
$view = new SugarView;
$view->displayHeader();
?>
<form action="index.php?entryPoint=ssiDownloadDocumentsEntry" method="POST" name="ssiExportForm" id="ssiExportForm">
	<div id="EditView_tabs">
		<div class="clearfix"></div>
		<div class="panel-content">
			<div class="panel panel-default">
				<div class="panel-body panel-collapse collapse in panelContainer" id="detailpanel_-1" data-id="LBL_CONTACT_INFORMATION">
					<div class="tab-content">
					<!-- tab_panel_content.tpl -->
					<div class="row edit-view-row">
						<div class="col-xs-12 col-sm-6 edit-view-row-item">
							<div class="col-xs-12 col-sm-4 label" >Month:</div>
							<div class="col-xs-12 col-sm-8 edit-view-field " > 
								<select class="form-control data-load-type-id" required name="month" id='month' style="height: fit-content;">
									<?php
										foreach($app_list_strings['month_list'] as $key=> $value ) {
											echo "<option value='".$key."'>".$value."</option>";
										}
									?>
								</select>
							</div>
						</div>
					</div>
					<div class="clear"></div>
					<div class="row edit-view-row">
						<div class="col-xs-12 col-sm-6 edit-view-row-item">
							<div class="col-xs-12 col-sm-4 label" >Year:</div>
							<div class="col-xs-12 col-sm-8 edit-view-field " > 
								<select class="form-control data-load-type-id" required name="year" id='year' style="height: fit-content;">
									<option value=""></option>
									<?php
										foreach($app_list_strings['year_list'] as $key=> $value ) {
											echo "<option value='".$key."'>".$value."</option>";
										}
									?>
								</select>
							</div>
						</div>
					</div>
					<div class="clear"></div>
					<div class="clear"></div>
					</div>                    
				</div>
			</div>
		</div>
	</div>

<div class="buttons dataload_buttons">
<input title="Save" accesskey="a" class="button primary" type="submit" name="button" value="Export Data" id="SAVE"> 
<input title="" accesskey="a" class="button primary" type="button" name="button" value="Export GST Data" id="export_gst_btn"> 
<input title="" accesskey="a" class="button primary" type="button" name="button" value="Export Salary Data" id="export_salary_btn"> 
</div>
</form>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script>
	$(document).ready(function () {
		var d = new Date();
	    m = d.getMonth() + 1;
	    y = d.getFullYear();
	  	$('#month').val(m);
	  	$('#year').val(y);
	  	$('#export_gst_btn').click(function() {
	  		if($('#month').val() != '' && $('#year').val() != '') {
	  			$('#ssiExportForm').attr('action', 'index.php?entryPoint=ssiDownloadGSTDocumentsEntry');
	  			$('#ssiExportForm').submit();
	  		} else {
	  			alert('Please select option...!');
	  		}
    	});
    	$('#export_salary_btn').click(function() {
	  		if($('#month').val() != '' && $('#year').val() != '') {
	  			$('#ssiExportForm').attr('action', 'index.php?entryPoint=ssiDownloadSalaryDataEntry');
	  			$('#ssiExportForm').submit();
	  		} else {
	  			alert('Please select option...!');
	  		}
    	});
	});	    
</script>
<?php
$view->displayFooter();
?>