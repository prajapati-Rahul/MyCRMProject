$('document').ready( function() {
	if ($("#category_id").val() == 'Finance' || $("#category_id").val() == 'Legal') {
		$('#amount').parent().parent().show();
		$('#document_date').parent().parent().show();
		$('#month').parent().parent().show();
		$('#year').parent().parent().show();
	} else {
		$('#amount').parent().parent().hide();
		$('#document_date').parent().parent().hide();
		$('#month').parent().parent().hide();
		$('#year').parent().parent().hide();
	} 

	if($('#document_type').val() == 'Finance_Expense') {
		$('#expense_type').parent().parent().show();	
	} else {
		$('#expense_type').parent().parent().hide();
	} 

	if ($("#category_id").val() == 'Finance') {
		$('#gst_compliance').parent().parent().show();		
	} else {
		$('#gst_compliance').parent().parent().hide();
	} 

	if ($("#gst_compliance").prop('checked') == true) {
		$('#gst_amount').parent().parent().show();		
	} else {
		$('#gst_amount').parent().parent().hide();
	} 

});
