<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point'); 
if (!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest' ) {
    require_once 'modules/Emails/Email.php';
    global $db,$sugar_config,$current_user;
    $contactID = $_REQUEST['contactID'];
    $oContact = BeanFactory::getBean('Contacts',$contactID);
    $errorMsg = '';
    $ssId = $_REQUEST['ssID'];
    $oSalarySlip = BeanFactory::getBean('SSI_Salary_Slip',$ssId);
    if(empty($oContact->email1))
    {
        $errorMsg = "Primary Email address";
        echo json_encode(array("error"=>'Missing Primary Email address'));
        exit;
    }
	$emailTemplateId = $sugar_config['email_template']['salaryslip'];
	if(empty($emailTemplateId))
    {
        $errorMsg = "Email template missing";
        echo json_encode(array("error"=>'Email template missing for SalarySlip!'));
        exit;
    }
	
	$oEmailTemplate = BeanFactory::getBean('EmailTemplates',$emailTemplateId);
    $request['module'] = 'Emails';
    $request['action'] = 'send';
    $request['type'] = 'out';
    $request['send'] = 1;
    $request['emails_email_templates_name'] = $oEmailTemplate->name;
    $request['emails_email_templates_idb'] = $oEmailTemplate->id;
    $request['parent_type'] = 'Contacts';
    $request['parent_name'] = $oContact->name;
    $request['parent_id'] = $oContact->id;
    $request['to_addrs_names'] = $oContact->email1;
	$request['name'] = $oEmailTemplate->subject;
    $request['description'] = strip_tags(htmlspecialchars_decode($oEmailTemplate->body_html));
	$request['description_html'] = $oEmailTemplate->body_html;

    // create email object for history
    $email = BeanFactory::newBean('Emails');
    $email = $email->populateBeanFromRequest($email, $request);
    $inboundEmailAccount = BeanFactory::newBean('InboundEmail');
    if (CustomuserIsAllowedToSendEmail($current_user, $inboundEmailAccount, $email)) {
        $email_id = $email->save();
        str_replace(" ", "_", $oSalarySlip->name) . ".pdf";
        $noteArray = array();
        $note = BeanFactory::newBean('Notes');
        $note->name = $oSalarySlip->name;
        $note->parent_type = 'Emails';
        $note->parent_id = $email_id;
        $note->file_mime_type = 'application/pdf';
        $note->filename = $fileName;
        $noteId = $note->save();
        UploadFile::duplicate_file($oSalarySlip->id, $noteId, $fileName);
        $noteArray[] = $note;
        $email->attachments =  $noteArray;
        $email->saved_attachments =  $noteArray;
		
		$macro_nv = array();

		// parse template Date
        $templateData = $oEmailTemplate->parse_email_template(
            array(
                'subject' => $email->name,
                'body_html' => $email->description_html,
                'body' => $email->description,
            ),
            'SSI_Salary_Slip',
            $oSalarySlip,
            $macro_nv
        );
        $email->name = $templateData['subject'];
        $email->description_html = $templateData['body_html'];
        $email->description = $templateData['body'];
		
        if ($email->send()) {
            $email->status = 'sent';
            $email->save();
            $oSalarySlip->status = 'Email_Sent';
            $oSalarySlip->processed=true;
            $oSalarySlip->save();
            echo json_encode(array("success"=>"sucessfully sent Email!"));
             exit;
        } else {
            if ($email->status !== 'draft') {
                $email->save();
            }
            $email->status = 'send_error';
            echo json_encode(array("error"=>"can not sent Email!"));
            exit;
        }
    }    
}
function CustomuserIsAllowedToSendEmail($requestedUser, $requestedInboundEmail, $requestedEmail){
    global $sugar_config;

    // Check that user is allowed to use inbound email account
    $hasAccessToInboundEmailAccount = false;
    $usersInboundEmailAccounts = $requestedInboundEmail->retrieveAllByGroupIdWithGroupAccounts($requestedUser->id);
    foreach ($usersInboundEmailAccounts as $inboundEmailId => $userInboundEmail) {
        if ($userInboundEmail->id === $requestedInboundEmail->id) {
            $hasAccessToInboundEmailAccount = true;
            break;
        }
    }

    $inboundEmailStoredOptions = $requestedInboundEmail->getStoredOptions();

    // if group email account, check that user is allowed to use group email account
    if ($requestedInboundEmail->isGroupEmailAccount()) {
        if ($inboundEmailStoredOptions['allow_outbound_group_usage'] === true) {
            $hasAccessToInboundEmailAccount = true;
        } else {
            $hasAccessToInboundEmailAccount = false;
        }
    }

    // Check that the from address is the same as the inbound email account
    $isFromAddressTheSame = false;
    if ($inboundEmailStoredOptions['from_addr'] === $requestedEmail->from_addr) {
        $isFromAddressTheSame = true;
    }

    // Check if user is using the system account, as the email address for the system account, will have different
    // settings. If there is not an outbound email id in the stored options then we should try
    // and use the system account, provided that the user is allowed to use to the system account.
    $outboundEmailAccount = new OutboundEmail();
    if (empty($inboundEmailStoredOptions['outbound_email'])) {
        $outboundEmailAccount->getSystemMailerSettings();
    } else {
        $outboundEmailAccount->retrieve($inboundEmailStoredOptions['outbound_email']);
    }

    $isAllowedToUseOutboundEmail = false;
    if ($outboundEmailAccount->type === 'system') {
        if ($outboundEmailAccount->isAllowUserAccessToSystemDefaultOutbound()) {
            $isAllowedToUseOutboundEmail = true;
        }

        // When there are not any authentication details for the system account, allow the user to use the system
        // email account.
        if ($outboundEmailAccount->mail_smtpauth_req == 0) {
            $isAllowedToUseOutboundEmail = true;
        }

        // When the user is allowed to send email as themselves using the system account, allow them to use the system account
        if (isset($sugar_config['email_allow_send_as_user']) && ($sugar_config['email_allow_send_as_user'])) {
            $isAllowedToUseOutboundEmail = true;
        }

        $admin = BeanFactory::newBean('Administration');
        $admin->retrieveSettings();
        $adminNotifyFromAddress = $admin->settings['notify_fromaddress'];
        if ($adminNotifyFromAddress === $requestedEmail->from_addr) {
            $isFromAddressTheSame = true;
        }
    } else {
        if ($outboundEmailAccount->type === 'user') {
            $isAllowedToUseOutboundEmail = true;
        }
    }

    // The inbound email account is an empty object, we assume the user has access
    if (empty($requestedInboundEmail->id)) {
        $hasAccessToInboundEmailAccount = true;
        $isFromAddressTheSame = true;
    }

    $error = false;
    if ($hasAccessToInboundEmailAccount !== true) {
        $error = 'Email Error: Not authorized to use Inbound Account "' . $requestedInboundEmail->name . '"';
    }
    if ($isFromAddressTheSame !== true) {
        $error = 'Email Error: Requested From address mismatch "'
            . $requestedInboundEmail->name . '" / "' . $requestedEmail->from_addr . '"';
    }
    if ($isAllowedToUseOutboundEmail !== true) {
        $error = 'Email Error: Not authorized to use Outbound Account "' . $outboundEmailAccount->name . '"';
    }
    if ($error !== false) {
        $GLOBALS['log']->security($error);
        return false;
    }
    return true;
}