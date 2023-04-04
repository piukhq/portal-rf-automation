*** Settings ***
Library    SeleniumLibrary
Variables    ../pageobjects/midmanagement_locators.py
Variables    ../pageobjects/midmanagment_merchant_locators.py
Variables    ../pageobjects/midmanagment_merchant_mids_locators.py

*** Keywords ***

Click on view button from the merchant detail screen
       click element    ${btn_view_merchant}
       sleep    1s

Click on visa Mid button and enter MID value in to text box to add the VISA MID
     [Arguments]     ${visa_mid}
       click element    ${btn_addVisa}
       sleep    1s
        input text    ${txt_input_mid_value}      ${visa_mid}
        sleep    1s

Enter BIN value in to the text box
     [Arguments]     ${bin_value}
     input text    ${txt_input_bin_value}      ${bin_value}


Click on Add MID button
       click element    ${btn_Add_mid}



verify visa Mid added successfully
     [Arguments]    ${visa_mid}
      sleep    2s
     wait until page contains   ${visa_mid}    timeout=10s
     sleep    2s

Click on Add Master Mid button and Enter MID value in to text box to add the Master Mid
     [Arguments]     ${master_mid}
       click element    ${btn_addMaster}
       sleep    1s
        input text    ${txt_input_mid_value}      ${master_mid}


verify Master Mid added successfully
    [Arguments]     ${master_mid}
      sleep    2s
     wait until page contains   ${master_mid}    timeout=10s
     sleep    2s


Click on Amex Mid button and Enter MID value in to text box to add the Master Mid
       [Arguments]     ${amex_mid}
       click element    ${btn_AddAmex}
       sleep    1s
        input text    ${txt_input_mid_value}      ${amex_mid}


verify Amex Mid added successfully
         [Arguments]     ${amex_mid}
      sleep    2s
     wait until page contains   ${amex_mid}   timeout=10s
     sleep    2s


Delete the Merchant by selecting three dots options from the Mids screen
        [Arguments]     ${merchant_name}
       click element    ${btn_midspagethreedots_option}
       sleep    1s
       click element    ${btn_midspage_option_delete}
       sleep    1s
       input text    ${txt_input_merchant_name}     ${merchant_name}
       click element    ${btn_delete_merchant}
       sleep    4s


Verify validation message displayed when we enter the duplicate Mid value
     page should contain    MID already exists
     sleep    2s

close the Visa mid dialog box
     click element    ${btn_close}


Select all the mids and click on delete button
     click element    ${checkbox_selectall_mids}
     sleep    1s
     click element    ${btn_delete_mids}
     sleep    1s

Click on Delete Mids button
      click element    ${btn_delete_mids_dialog_box}
      sleep    1s


verify that mid has deleted
        [Arguments]      ${visa_mid}  ${master_mid}   ${amex_mid}
         page should not contain    ${visa_mid}
          page should not contain    ${master_mid}
           page should not contain     ${amex_mid}



Close the Delete Mids dialog box
    click element   ${btn_delete_close}


verify the Mid has not deleted
     [Arguments]      ${visa_mid}
      wait until page contains    ${visa_mid}  timeout=10s
      sleep    1s







