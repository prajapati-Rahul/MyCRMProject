function openPopupDialog(URL, dialogWidth, dialogHeight, dialogDiv, dialogTitle, dialogText, beforeClose, beforeCloseCondition, reloadPage, dialogButtons, dialogModel)
{
    sugarListView.get_checks();
    var uid = document.MassUpdate.uid.value;

    if ($('#'+dialogDiv).length <= 0) { // if its first time attach the URL output with Dialog 
        $('<div id="'+dialogDiv+'" title="'+dialogTitle+'">'+dialogText+'</div>').appendTo('body'); // add the Div for Popup
        if(URL)
        {
            $("#"+dialogDiv).html('<div id="loading" style="width:100%;text-align:center;vertical-align:middle;line-height:' + (dialogHeight - 60) + 'px;"><img src="index.php?entryPoint=getImage&imageName=loading.gif" style="vertical-align: middle;"  /> <span style="color:blue; text-align: center; padding-bottom: 10px"> Loading...</span> </div>');
            $("#"+dialogDiv).load(URL+'&uid='+uid); // load content in div
        }
    }
    if (typeof(dialogModel) == "undefined") dialogModel = true;
    //configure dialog 
    $("#"+dialogDiv).dialog({
        autoOpen: false,
        modal: dialogModel,
        closeOnEscape: false,
        closeText : '',
        hide: "explode",
        resizable: true,
        height: dialogHeight,
        width: dialogWidth,
        beforeClose: function(event, ui) {
            if (beforeClose && reloadPage)
            {
                if ($("#"+dialogDiv+" "+beforeCloseCondition).length > 0)
                {
                   window.location.href = 'index.php?action=index&module=SSI_Salary_Structure';
                }
            }
            else if(reloadPage)
            {
                window.location.href = 'index.php?action=index&module=SSI_Salary_Structure';
            }
        },
        close: function(event, ui) {
            window.location.href = 'index.php?action=index&module=SSI_Salary_Structure';
        },
    });

    // Add Buttons
    if (dialogButtons)
        $('#'+dialogDiv).dialog('option', 'buttons', dialogButtons);
    $("#"+dialogDiv).dialog("open");
}