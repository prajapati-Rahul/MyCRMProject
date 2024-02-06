$(document).ready(function () {
    hideShowPanel();
    hideShowField();   
});
function hideShowPanel() 
{
    var contactType = $('#contact_type').val();
    if(contactType == 'Client_Contact') {
        $('#top-panel-0').parent().hide();
    } else {
        $('#top-panel-0').parent().show();
    }
}
function hideShowField() 
{
    var contactType = $('#contact_type').val();
    if(contactType == 'Contractor') {
        $('#pan_card_number').parent().parent().hide();
    } else {
        $('#pan_card_number').parent().parent().show();
    }
}