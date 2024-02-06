<?php
// created: 2024-02-01 13:47:48
$viewdefs['Accounts']['DetailView'] = array (
  'templateMeta' => 
  array (
    'form' => 
    array (
      'buttons' => 
      array (
        'SEND_CONFIRM_OPT_IN_EMAIL' => 
        array (
          'customCode' => '<input type="submit" class="button hidden" disabled="disabled" title="{$APP.LBL_SEND_CONFIRM_OPT_IN_EMAIL}" onclick="this.form.return_module.value=\'Accounts\'; this.form.return_action.value=\'Accounts\'; this.form.return_id.value=\'{$fields.id.value}\'; this.form.action.value=\'sendConfirmOptInEmail\'; this.form.module.value=\'Accounts\'; this.form.module_tab.value=\'Accounts\';" name="send_confirm_opt_in_email" value="{$APP.LBL_SEND_CONFIRM_OPT_IN_EMAIL}"/>',
          'sugar_html' => 
          array (
            'type' => 'submit',
            'value' => '{$APP.LBL_SEND_CONFIRM_OPT_IN_EMAIL}',
            'htmlOptions' => 
            array (
              'class' => 'button hidden',
              'id' => 'send_confirm_opt_in_email',
              'title' => '{$APP.LBL_SEND_CONFIRM_OPT_IN_EMAIL}',
              'onclick' => 'this.form.return_module.value=\'Accounts\'; this.form.return_action.value=\'DetailView\'; this.form.return_id.value=\'{$fields.id.value}\'; this.form.action.value=\'sendConfirmOptInEmail\'; this.form.module.value=\'Accounts\'; this.form.module_tab.value=\'Accounts\';',
              'name' => 'send_confirm_opt_in_email',
              'disabled' => true,
            ),
          ),
        ),
        0 => 'EDIT',
        1 => 'DUPLICATE',
        2 => 'DELETE',
        3 => 'FIND_DUPLICATES',
        'AOS_GENLET' => 
        array (
          'customCode' => '<input type="button" class="button" onClick="showPopup();" value="{$APP.LBL_PRINT_AS_PDF}">',
        ),
      ),
    ),
    'maxColumns' => '2',
    'widths' => 
    array (
      0 => 
      array (
        'label' => '10',
        'field' => '30',
      ),
      1 => 
      array (
        'label' => '10',
        'field' => '30',
      ),
    ),
    'includes' => 
    array (
      0 => 
      array (
        'file' => 'modules/Accounts/Account.js',
      ),
      1 => 
      array (
        'file' => 'custom/modules/Accounts/js/detailViewValidation.js',
      ),
    ),
    'useTabs' => false,
    'tabDefs' => 
    array (
      'LBL_ACCOUNT_INFORMATION' => 
      array (
        'newTab' => false,
        'panelDefault' => 'expanded',
      ),
      'LBL_EDITVIEW_PANEL1' => 
      array (
        'newTab' => false,
        'panelDefault' => 'expanded',
      ),
    ),
    'syncDetailEditViews' => true,
  ),
  'panels' => 
  array (
    'lbl_account_information' => 
    array (
      0 => 
      array (
        0 => 
        array (
          'name' => 'name',
          'comment' => 'Name of the Company',
          'label' => 'LBL_NAME',
        ),
        1 => 
        array (
          'name' => 'account_type',
          'comment' => 'The Company is of this type',
          'label' => 'LBL_TYPE',
        ),
      ),
      1 => 
      array (
        0 => 
        array (
          'name' => 'email1',
          'studio' => 'false',
          'label' => 'LBL_EMAIL',
        ),
        1 => 
        array (
          'name' => 'phone_office',
          'comment' => 'The office phone number',
          'label' => 'LBL_PHONE_OFFICE',
        ),
      ),
      2 => 
      array (
        0 => 
        array (
          'name' => 'website',
          'type' => 'link',
          'label' => 'LBL_WEBSITE',
          'displayParams' => 
          array (
            'link_target' => '_blank',
          ),
        ),
      ),
      3 => 
      array (
        0 => 
        array (
          'name' => 'billing_address_street',
          'label' => 'LBL_BILLING_ADDRESS',
          'type' => 'address',
          'displayParams' => 
          array (
            'key' => 'billing',
          ),
        ),
        1 => 
        array (
          'name' => 'shipping_address_street',
          'label' => 'LBL_SHIPPING_ADDRESS',
          'type' => 'address',
          'displayParams' => 
          array (
            'key' => 'shipping',
          ),
        ),
      ),
      4 => 
      array (
        0 => 
        array (
          'name' => 'description',
          'comment' => 'Full text of the note',
          'label' => 'LBL_DESCRIPTION',
        ),
      ),
      5 => 
      array (
        0 => 
        array (
          'name' => 'assigned_user_name',
          'label' => 'LBL_ASSIGNED_TO',
        ),
        1 => '',
      ),
    ),
    'lbl_editview_panel1' => 
    array (
      0 => 
      array (
        0 => 
        array (
          'name' => 'bank_name',
          'label' => 'LBL_BANK_NAME',
        ),
        1 => 
        array (
          'name' => 'bank_account_number',
          'label' => 'LBL_BANK_ACCOUNT_NUMBER',
        ),
      ),
      1 => 
      array (
        0 => 
        array (
          'name' => 'bank_ifc_code',
          'label' => 'LBL_BANK_IFC_CODE',
        ),
        1 => 
        array (
          'name' => 'status',
          'studio' => 'visible',
          'label' => 'LBL_STATUS',
        ),
      ),
      2 => 
      array (
        0 => 
        array (
          'name' => 'pan_card_number',
          'label' => 'LBL_PAN_CARD_NUMBER',
        ),
        1 => 
        array (
          'name' => 'place_of_supply',
          'label' => 'LBL_PLACE_OF_SUPPLY',
        ),
      ),
      3 => 
      array (
        0 => 
        array (
          'name' => 'gst_type',
          'studio' => 'visible',
          'label' => 'LBL_GST_TYPE',
        ),
        1 => 
        array (
          'name' => 'gst_number',
          'label' => 'LBL_GST_NUMBER',
        ),
      ),
      4 => 
      array (
        0 => 
        array (
          'name' => 'state_code',
          'label' => 'LBL_STATE_CODE',
        ),
        1 => '',
      ),
    ),
  ),
);