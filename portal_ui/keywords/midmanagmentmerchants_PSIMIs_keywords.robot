*** Settings ***
Library    SeleniumLibrary
Variables    ../pageobjects/midmanagement_locators.py
Variables    ../pageobjects/midmanagment_merchant_locators.py
Variables    ../pageobjects/midmanagment_merchant_mids_locators.py
Variables    ../pageobjects/midmanagment_merchant_Secondarymids_locators.py
Variables    ../pageobjects/midmanagment_merchant_PSIMIs_locators.py

*** Keywords ***

Click on PSIMIs mids tab
    click element    ${btn_psimis_tab}
    sleep    1s


Click on Add visa button to add visa PSIMIs
     [Arguments]      ${visa_Psimis}
      click element    ${btn_visa_psimis}
      sleep    1s
      input text    ${txt_input_feild_psimis}     ${visa_Psimis}
      click element    ${btn_add_psimis}
      sleep    1s

Click on Add Master button to add master PSIMIs
     [Arguments]    ${Master_Psimis}
      click element    ${btn_master_psimis}
      sleep    1s
      input text    ${txt_input_feild_psimis}    ${Master_Psimis}
      click element     ${btn_add_psimis}
      sleep    1s





Veirfy visa and master PSIMIs addeded sucussfully
      [Arguments]    ${visa_Psimis}     ${Master_Psimis}
       wait until page contains      ${visa_Psimis}
       wait until page contains     ${Master_Psimis}




Click on Delete PSIMIs button
     click element    ${btn_delete_psimis}


verify PSIMIs Deleted successfully
       [Arguments]    ${visa_Psimis}     ${Master_Psimis}
       wait until page does not contain    ${visa_Psimis}
       wait until page does not contain    ${Master_Psimis}

Click on threedots option and click commnets option
         click element    ${btn_options}
         sleep    1s
         click element    ${btn_comments_psimis}
         sleep    3s


Enter comments in the comment textbox
        [Arguments]     ${comment}
        input text       ${txt_add_comment}     ${comment}
         click element    ${btn_add_comment_submit}


Verify comment saved successfully
        [Arguments]    ${comment}
        wait until page contains    ${comment}


Click on Edit comment
      [Arguments]     ${updated_comment}
      sleep    2s
      click element  ${txt_option_threedots_comments}
       click element    ${btn_comments_psimis}
       sleep    2s
     double click element    ${btn_threedot_options}
      sleep    5s
      click element    ${btn_edit_comment_psimis}
      press keys    ${txt_updat_commentlabel}    CTRL+a
      press keys    ${txt_updat_commentlabel}    BACKSPACE
      wait until element is visible    ${txt_updat_commentlabel}     timeout=10s
      wait until element is enabled    ${txt_updat_commentlabel}
      click element    ${txt_updat_commentlabel}
      input text    ${txt_updat_commentlabel}    ${updated_comment}
      press key    ${txt_updat_commentlabel}     \\13










