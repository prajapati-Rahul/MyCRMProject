$(document).ready(function () {
    hideShowField();
    $('#account_type').change(function() {
        hideShowField();
    });
   
});
function hideShowField() 
{
    $('#bank_name').parent().parent().hide();
    $('#bank_account_number').parent().parent().hide();
    $('#bank_ifc_code').parent().parent().hide();
    $('#status').parent().parent().hide();
    var contactType = $('#account_type').val();
    if (contactType == 'Contractor' || contactType == 'Self') {
        $('#bank_name').parent().parent().show();
        $('#bank_account_number').parent().parent().show();
        $('#bank_ifc_code').parent().parent().show();
        $('#status').parent().parent().show();
    }     
}