*** Settings ***
Library    SeleniumLibrary
Variables    ../pageobjects/midmanagement_locators.py
Variables    ../pageobjects/midmanagment_merchant_locators.py
Variables    ../pageobjects/midmanagment_merchant_mids_locators.py
Variables    ../pageobjects/midmanagment_merchant_locations_locators.py

*** Keywords ***


Click on Locations tab
      click element     ${btn_location}
       sleep    1s


Click on Add Location button to add the location
      click element     ${btn_add_location}
       sleep    1s


Enter Name of the locations
   [Arguments]     ${locationName}
    input text    ${input_Location_name}     ${locationName}


Enter location id
    [Arguments]    ${locationID}
    input text    ${input_location_id}    ${locationID}

Enter address line field
         [Arguments]        ${addressLine1}
         input text   ${input_addressLine1}     ${addressLine1}

Enter post code field
          [Arguments]        ${postcode}
          input text   ${input_postcode}      ${postcode}

click on save button
        press key  ${btn_save_location}  \\13
        scroll element into view   ${input_Location_name}


verify Location save successfully
      [Arguments]        ${locationName}
        wait until page contains      ${locationName}     timeout=10s

Click on three dots options menu in the location page
         sleep    1s
         click element    ${btn_option_threedots}
         sleep    1s


Delete the merchant by selecting Delete option
    [Arguments]    ${merchant_name}
      click element     ${btn_option_delete_Location}
      sleep    1s
     input text    ${txt_input_merchant_name}     ${merchant_name}
     click element    ${btn_delete_merchant}
     sleep    1s


Click on the location to view the locataion details page
     sleep    1s
    click element    ${checkbox_location}

Click on the SubLocation tab from the locataion details page
    click element    ${btn_sub_location_tab}
    click element    ${btn_sub_location_tab}
    click element    ${btn_sub_location_tab}
    click element    ${btn_sub_location_tab}
    sleep    2s


Click on the New sub Location button
       click element    ${btn_new_Sub_location}

Enter Name of the sub locations
        [Arguments]      ${sublocationName}
    input text    ${input_Location_name}     ${sublocationName}


Close the locataion details page
      click element    ${btn_close_location_page}


Verify SubLocation is saved successfully
           [Arguments]        ${sublocationName}
        wait until page contains      ${sublocationName}     timeout=10s
        sleep    2s


Click on Edit button to update the location
     sleep    2s
      Wait Until Element Is Visible     ${btn_edit_location}    timeout=10s
       Click Element    ${btn_edit_location}



Update location name and save the location
       [Arguments]        ${UpdatedlocationName}
       sleep    1s
       click element  ${input_Location_name}
      press keys    ${input_Location_name}    CTRL+a
      press keys    ${input_Location_name}    BACKSPACE
       input text    ${input_Location_name}      ${UpdatedlocationName}
       press key  ${btn_save_location}  \\13


Verify location saved with updated location name
       [Arguments]        ${UpdatedlocationName}
       wait until page contains    ${UpdatedlocationName}    timeout=10s

Click on delete Button to delete the location
        click element    ${btn_delete_Location}

Verify are you sure you want to delete message is displayed
      wait until page contains    Are you sure you want to delete this Location?
      sleep    1s
      element should contain    ${txt_message}    Are you sure you want to delete this Location?

Click on Yes Delete button to confirm the deletion
      click element    ${btn_yesdelete_location}

Verify Location is deleted
       [Arguments]   ${UpdatedlocationName}
      page should contain   ${UpdatedlocationName}    timeout=10s


verify Enter unique location id Message is getting displayed
     wait until page contains    Enter unique Location ID
     sleep    1s

Click on Cancel button to close the Location window
        click element    ${btn_close_location}


Verify the validation messages displayed for all the Manditory feilds
        wait until page contains    Enter name
        sleep    1s
        wait until page contains    Enter location ID
        sleep    1s
        wait until page contains    Enter address line 1
        sleep    1s
        wait until page contains    Enter postcode

Click on close button to close the Location window
       click element    ${btn_x_location}


Uncheck the physical location check box
     click element    ${btn_uncheck_physicalLocation}

Verify the validation messages displayed new location
     wait until page contains    Enter name
     sleep    1s
     wait until page contains    Enter location ID


Click on Delete Location button
        click element    ${btn_delete_Locations}

verify Locations deleted successfully
         [Arguments]        ${locationName}     ${sublocationName}
         wait until page does not contain    ${locationName}
         wait until page does not contain    ${sublocationName}



















