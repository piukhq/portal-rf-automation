*** Settings ***
Library    SeleniumLibrary
Variables    ../pageobjects/midmanagement_locators.py
Variables    ../pageobjects/midmanagment_merchant_locators.py
Variables    ../pageobjects/midmanagment_merchant_mids_locators.py
Variables    ../pageobjects/midmanagment_merchant_Secondarymids_locators.py

*** Keywords ***

Click on secondary Mids tab
    click element    ${btn_secondary_mids_tab}


Click on Add Visa button and enter Visa secondary Mids
         [Arguments]    ${visa_Secmid}
    click element    ${btn_addVisa_secondary}
    input text    ${input_secondary_mid}      ${visa_Secmid}
    click element    ${btn_add_secondarymid}


Click on Add Master button and enter Master secondary Mids
         [Arguments]      ${master_Secmid}
         sleep    1s
         click element    ${btn_addmaster_secondary}
         input text      ${input_secondary_mid}    ${master_Secmid}
         click element    ${btn_add_secondarymid}


Verify visa and master secondary Mids added successfully
       [Arguments]     ${visa_Secmid}   ${master_Secmid}
          wait until page contains    ${visa_Secmid}    timeout=10s
             wait until page contains    ${master_Secmid}    timeout=10s
             sleep    1s


Select Visa mid and open Secondary Mids single view
     click element    ${visa_mid}
     sleep    2s



Click on Locations tab and Click on Link New Location button to Link Location to the Mid
      wait until page contains element   ${btn_locations}
       sleep    2s
       click element    ${btn_locations}
       sleep    1s
        click element    ${btn_link_newlocation}
        click element    ${list_select_location}
        click element    ${dropdownlist_location}
        sleep    1s
        click element    ${btn_save}


verify Location is linked to mid
        [Arguments]      ${master_Secmid}
        wait until page contains    ${master_Secmid}
        sleep    2s


Unlink the Linked Location
       click element    ${btn_unlink}
       sleep    1s
       click element    ${btn_yesunlink}



Delete the Mid and verify Mid was deleted
      [Arguments]      ${visa_Secmid}
         click element    ${btn_delete_mid}
         click element    ${btn_yesDelete_mid}
           page should contain    ${visa_Secmid}
           sleep    2s


Click on Comments tab
       sleep    1s
      click element    ${btn_comment}

edit comments
      [Arguments]     ${updated_comment}
      sleep    2s
      click element  ${txt_option_threedots_comments}
      click element    ${btn_edit_comment}
      press keys    ${txt_updat_commentlabel}    CTRL+a
      press keys    ${txt_updat_commentlabel}    BACKSPACE
      wait until element is visible    ${txt_updat_commentlabel}     timeout=10s
      wait until element is enabled    ${txt_updat_commentlabel}
      click element    ${txt_updat_commentlabel}
      input text    ${txt_updat_commentlabel}    ${updated_comment}
      press key    ${txt_updat_commentlabel}     \\13


Click on Delete SecondaryMids button
       click element    ${btn_delete_secondary_mids}

verify SecondaryMids deleted successfully
     [Arguments]     ${visa_Secmid}   ${master_Secmid}
            wait until page does not contain    ${visa_Secmid}    timeout=10s
             wait until page does not contain    ${master_Secmid}    timeout=10s
             sleep    1s



