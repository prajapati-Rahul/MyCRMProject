function SentSalarySlip(id,contactId) 
{
	SUGAR.ajaxUI.showLoadingPanel();
	$.ajax({
		url: 'index.php?module=SSI_Salary_Slip&action=sendSalarySlipEmail&to_pdf=true',
		type: 'POST',
		async: true,
		dataType: 'JSON',
		data: {ssID:id,contactID:contactId},
	})
	.done(function(responseData) {   
		if(responseData.success) {
			alert(responseData.success);
			SUGAR.ajaxUI.hideLoadingPanel();
			location.reload();
		} else {
				alert(responseData.error);
				SUGAR.ajaxUI.hideLoadingPanel();
			return false;
		}
	})
	.fail(function() {
		console.log("error");
		SUGAR.ajaxUI.hideLoadingPanel();
		return false;
	});
}