*** Settings ***
Library    SeleniumLibrary
Variables    ../pageobjects/midmanagement_locators.py
Variables    ../pageobjects/midmanagment_merchant_locators.py

*** Keywords ***


Click on view button to view the plan detail page
    click element    ${btn_view_plan}
    sleep    2s

Add new Merchant by clicking on New Merchant button
     click element   ${btn_add_merchant}
     sleep    2s

Enter name of the merchant in to relevant field
     [Arguments]     ${merchant_name}
     input text    ${txt_input_merchant_name}    ${merchant_name}

Save the merchant by clicking on Add Merchant button
      click element    ${btn_save_add_merchant}

verify merchant has saved successfully
      [Arguments]     ${merchant_name}
      sleep    2s
     wait until page contains    ${merchant_name}    timeout=10s
     sleep    2s



enter another merchant in to the relevent feild
    [Arguments]     ${newmerchant_name}
     input text    ${txt_input_merchant_name}    ${newmerchant_name}

verify the paln has all the merchants added to plan
       [Arguments]     ${merchant_name}    ${newmerchant_name}
       wait until page contains    ${merchant_name}    timeout=10s
       wait until page contains    ${newmerchant_name}  timeout=10s

Delete plan by selecting on delete option from three dots on merchant page
       [Arguments]    ${plan_name}
       click element    ${btn_merchantpagethreedots_option}
       sleep    1s
       click element    ${btn_option_delete}
       sleep    2s
       input text    ${txt_planName_to_delete}     ${plan_name}
       click element    ${btn_delete_plan}


Verify plan has deleted from the plan page
      [Arguments]    ${plan_name}
      page should contain  ${plan_name}    timeout=10s

Click on Edit Merchant from three dots options menu near the Merchant
        click element    ${btn_threedots_option_nearmerachant}
        sleep    1s
        click element    ${btn_merchant_editoption}


Click on three dots options menu near the Merchant
       click element      ${btn_threedots_option_nearmerachant}



Update the Merchant name
      [Arguments]     ${updatedMerchant_name}
      sleep    3s
      click element  ${txt_input_merchant_name}
      press keys    ${txt_input_merchant_name}    CTRL+a
      press keys    ${txt_input_merchant_name}    BACKSPACE
      input text    ${txt_input_merchant_name}    ${updatedMerchant_name}
      ${text}=        get value     ${txt_input_merchant_name}
      Log             ${text}


Click on the Save changes button in Edit merchant dialog box
       click element    ${btn_saveChanges}
       sleep    3s


verify merchant has saved successfully with updated details
      [Arguments]      ${updatedMerchant_name}
      wait until page contains    ${updatedMerchant_name}


Delete the merchant by selecting option Delete
        [Arguments]    ${merchant_name}
      click element     ${btn_option_delete_merchant}
      sleep    1s
     input text    ${txt_input_merchant_name}     ${merchant_name}
     click element    ${btn_delete_merchant}
     sleep    1s

verify merchant has deleted successfully
       [Arguments]    ${merchant_name}
     page should not contain    ${merchant_name}









