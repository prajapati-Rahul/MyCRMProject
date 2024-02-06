$('document').ready( function() {
	hideShowFields();
	hideShowExpenseType();
	hideShowGSTAmount();
	$('#filename_file').change(function () {
		fillValueAccordingParent();
	});
	$('#category_id').change(function () {
		hideShowFields();
	});
	$('#document_type').change(function () {
		hideShowExpenseType();
	});
	$('#gst_compliance').change(function () {
		hideShowGSTAmount();
	});

});


function fillValueAccordingParent() {
    hideShowFields();
	var documentName = $("#filename_file").val();
	 documentName = documentName.split("\\").pop();
	$("#document_name").val(documentName);

    if (documentName) {

    	var checkString = [
			['food', 'Finance_Expense', 'Food_Entertainment'],
			['fuel', 'Finance_Expense', 'Fuel'],
			['professional', 'Finance_Expense', 'Professional_Tax'],
			['airtel', 'Finance_Expense', 'Internet'],
			['internet', 'Finance_Expense', 'Internet'],
			['mobile', 'Finance_Expense', 'Food_Entertainment'],
			['broadband', 'Finance_Expense', 'Food_Entertainment'],
			['gsuite', 'Finance_Expense', 'GSuite'],
			['rent', 'Finance_Expense', 'Office_Rent'],
			['torrent', 'Finance_Expense', 'Electricity'],
			['electricity', 'Finance_Expense', 'Electricity'],
			['school', 'Finance_Expense', 'School_Fees'],
			['property', 'Finance_Expense', 'property_Tax'],
			['school', 'Finance_Expense', 'School_Fees'],
			['insurance', 'Finance_Expense', 'Insurance_Premium'],
			['lic', 'Finance_Expense', 'Insurance_Premium'],
			['premium', 'Finance_Expense', 'Insurance_Premium'],
			['gst', 'Finance_GST_Challan', 'NA'],
		];
		checkString.forEach(function (item) {
			if(documentName.toLowerCase().search(item[0]) !== -1)
				setCategoryAndExpenseType(item[1], item[2]);	
		});
        
    }
}

function setCategoryAndExpenseType(documentType, expenseType) {
    $("#category_id").val('Finance');
	loadDynamicEnum("category_id","document_type");
	$('#document_type').val(documentType);
	hideShowExpenseType();
	if(expenseType != 'NA') {
		$('#expense_type').parent().parent().show();
		$('#expense_type').val(expenseType);	
	}
	hideShowFields();
	
}


function hideShowFields()
{
	category = $("#category_id").val();
	removeFromValidate("EditView","document_date");
	removeFromValidate("EditView","amount");
	$('#amount').parent().parent().hide();
	$('#document_date').parent().parent().parent().hide();
	$('#month').parent().parent().hide();
	$('#year').parent().parent().hide();
	$('#gst_compliance').parent().parent().hide();
	if (category == 'Finance' || category == 'Legal') {
		$('#amount').parent().parent().show();
		addToValidate('EditView','amount','currency',true,'Amount');
		$('#document_date').parent().parent().parent().show();
		addToValidate('EditView','document_date','date',true,'Date');
		if ($("input[name=record]").val() == '') {
			$('#month').parent().parent().show();
			$('#year').parent().parent().show();
		}	
	} 
	if(category == 'Finance') {
		$('#gst_compliance').parent().parent().show();
	} else {
		$('#gst_compliance').prop("checked",false);
		$('#gst_amount').val('');
		$('#gst_amount').parent().parent().hide();
	}

}

function setMonthYear(){
	if ($("input[name=record]").val() == '') {
		var date =  $('#document_date').val();
		$.ajax({
			url: 'index.php?module=Documents&action=getMonthYear&to_pdf=true',
			type: 'POST',
			async: true,
			dataType: 'JSON',
			data: {date:date},
		})
		.done(function(responseData) {   
			$('#month').val(responseData.month);
			$('#year').val(responseData.year);
		})
		.fail(function() {
			console.log("error");
			return false;
		});
	}
}

function hideShowExpenseType()
{
	removeFromValidate("EditView","expense_type");
	$('#expense_type').parent().parent().hide();
	if ($("#document_type").val() == 'Finance_Expense') {
		$('#expense_type').parent().parent().show();
		addToValidate('EditView','expense_type','enum',true,'Expense Type');
		 //$("div").find("[data-label='LBL_EXPENSE_TYPE']").append('<span class="required" id="expense_type_required">*</span>'); 
	} else {
		$('#expense_type').val('');
		$('#expense_type_required').remove();
	}
}

function hideShowGSTAmount()
{
	$('#gst_amount').parent().parent().hide();
	if ($('#gst_compliance').prop("checked") == true) {
		$('#gst_amount').parent().parent().show();
	} else {
		$('#gst_amount').val('');
	}
}