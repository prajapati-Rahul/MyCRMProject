$(document).ready(function () {
    hideShowPanel();
    hideShowField();
    $('#contact_type').change(function() {
        hideShowPanel();
        hideShowField();
    });
   
});
function hideShowPanel() 
{
    var contactType = $('#contact_type').val();
    if(contactType == 'Client_Contact' || contactType == '') {
        $('#detailpanel_0').parent().hide();
    } else {
        $('#detailpanel_0').parent().show();
    }
}
function hideShowField() 
{
    addToValidate('EditView','account_id','id',true,"Account Name");
    var contactType = $('#contact_type').val();
    if(contactType == 'Freelancer') {
        removeFromValidate('EditView','account_id'); 
    }     
}