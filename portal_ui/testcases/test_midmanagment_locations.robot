*** Settings ***
Resource    ../keywords/general_keywords.robot
Resource    ../keywords/midmanagement_keywords.robot
Resource    ../keywords/midmanagmentmerchant_keywords.robot
Resource    ../keywords/midmanagmentmerchants_mids_keywords.robot
Resource    ../keywords/midmanagmentmerchants_locations_keywords.robot
Library     String
Library    SeleniumLibrary


Suite Setup    Include Browser Drivers
Test Teardown    Kill Browser

*** Variables ***

${admin_test_user_email} =   auth0_test2@bink.com
${admin_test_user_password} =   Shove9117
${addressLine1} =    testaddress
${postcode} =    CT07HY


*** Test Cases ***

Scenario : Add Location to the merchant by entering all Physical location details
     [Tags]    LOC    robot:skip-on-failure
    Given Launch the Portal App
    And Login to Aperture using     ${admin_test_user_email}        ${admin_test_user_password}
    And Navigate to the Mid Directory
    Then Click on the New plan button
    ${plan_name}=    generate random string     6   [LETTERS]
    Log    Random string: ${plan_name}
    Then Enter Plan Name in to the relevant field    ${plan_name}
    ${plan_ID}=  generate random string     9    [NUMBERS]
    Log    Random string: ${plan_ID}
    And Enter Plan ID in to the relevant field   ${plan_ID}
    ${plan_slug}    generate random string    10    [LETTERS]
    And Enter Slug in to the relevant field   ${plan_slug}
    Then Click on the Add plan button
    And Verify the Plan has saved successfully    ${plan_name}
    And Click on view button to view the plan detail page
    Then Add new Merchant by clicking on New Merchant button
    ${merchant_name}=  generate random string     10    [LETTERS]
    Log    Random string: ${merchant_name}
    And Enter name of the merchant in to relevant field    ${merchant_name}
    Then Save the merchant by clicking on Add Merchant button
    And verify merchant has saved successfully    ${merchant_name}
    Then Click on view button from the merchant detail screen
    And Click on Locations tab
    Then Click on Add Location button to add the location
    ${locationName}=   generate random string    10    [LETTERS]
    Then Enter Name of the locations     ${locationName}
    ${locationID}=   generate random string    10    [LETTERS]
    And Enter location id    ${locationID}
    And Enter address line field    ${addressLine1}
    And Enter post code field   ${postcode}
    Then click on save button
    Then verify Location save successfully    ${locationName}
    Then Click on three dots options menu in the location page
    And Delete the merchant by selecting Delete option    ${merchant_name}
    Then verify merchant has deleted successfully    ${merchant_name}
    And Delete plan by selecting on delete option from three dots on merchant page      ${plan_name}
    And Verify plan has deleted from the plan page       ${plan_name}


Scenario : Add Location and a sub location with the physical location details
      [Tags]    LOC    robot:skip-on-failure
    Given Launch the Portal App
    And Login to Aperture using     ${admin_test_user_email}        ${admin_test_user_password}
    And Navigate to the Mid Directory
    Then Click on the New plan button
    ${plan_name}=    generate random string     6   [LETTERS]
    Log    Random string: ${plan_name}
    Then Enter Plan Name in to the relevant field    ${plan_name}
    ${plan_ID}=  generate random string     9    [NUMBERS]
    Log    Random string: ${plan_ID}
    And Enter Plan ID in to the relevant field   ${plan_ID}
    ${plan_slug}    generate random string    10    [LETTERS]
    And Enter Slug in to the relevant field   ${plan_slug}
    Then Click on the Add plan button
    And Verify the Plan has saved successfully    ${plan_name}
    And Click on view button to view the plan detail page
    Then Add new Merchant by clicking on New Merchant button
    ${merchant_name}=  generate random string     10    [LETTERS]
    Log    Random string: ${merchant_name}
    And Enter name of the merchant in to relevant field    ${merchant_name}
    Then Save the merchant by clicking on Add Merchant button
    And verify merchant has saved successfully    ${merchant_name}
    Then Click on view button from the merchant detail screen
    And Click on Locations tab
    Then Click on Add Location button to add the location
    ${locationName}=   generate random string    10    [LETTERS]
    Then Enter Name of the locations     ${locationName}
    ${locationID}=   generate random string    10    [LETTERS]
    And Enter location id    ${locationID}
    And Enter address line field    ${addressLine1}
    And Enter post code field   ${postcode}
    Then click on save button
    Then verify Location save successfully    ${locationName}
    And Click on the location to view the locataion details page
    Then Click on the SubLocation tab from the locataion details page
    And Click on the New sub Location button
    ${SublocationName}=   generate random string    10    [LETTERS]
    Then Enter Name of the sub locations     ${sublocationName}
    Then click on save button
    And Close the locataion details page
    Then Verify SubLocation is saved successfully    ${sublocationName}
    Then Click on three dots options menu in the location page
    And Delete the merchant by selecting Delete option    ${merchant_name}
    Then verify merchant has deleted successfully    ${merchant_name}
    And Delete plan by selecting on delete option from three dots on merchant page      ${plan_name}
    And Verify plan has deleted from the plan page       ${plan_name}


Scenario : Add Location New Location, Edit Location and delete the Location
         [Tags]    LOC    robot:skip-on-failure
    Given Launch the Portal App
    And Login to Aperture using     ${admin_test_user_email}        ${admin_test_user_password}
    And Navigate to the Mid Directory
    Then Click on the New plan button
    ${plan_name}=    generate random string     6   [LETTERS]
    Log    Random string: ${plan_name}
    Then Enter Plan Name in to the relevant field    ${plan_name}
    ${plan_ID}=  generate random string     9    [NUMBERS]
    Log    Random string: ${plan_ID}
    And Enter Plan ID in to the relevant field   ${plan_ID}
    ${plan_slug}    generate random string    10    [LETTERS]
    And Enter Slug in to the relevant field   ${plan_slug}
    Then Click on the Add plan button
    And Verify the Plan has saved successfully    ${plan_name}
    And Click on view button to view the plan detail page
    Then Add new Merchant by clicking on New Merchant button
    ${merchant_name}=  generate random string     10    [LETTERS]
    Log    Random string: ${merchant_name}
    And Enter name of the merchant in to relevant field    ${merchant_name}
    Then Save the merchant by clicking on Add Merchant button
    And verify merchant has saved successfully    ${merchant_name}
    Then Click on view button from the merchant detail screen
    And Click on Locations tab
    Then Click on Add Location button to add the location
    ${locationName}=   generate random string    1    [LETTERS]
    Then Enter Name of the locations     ${locationName}
    ${locationID}=   generate random string    10    [LETTERS]
    And Enter location id    ${locationID}
    And Enter address line field    ${addressLine1}
    And Enter post code field   ${postcode}
    Then click on save button
    Then verify Location save successfully    ${locationName}
    And Click on the location to view the locataion details page
    Then Click on Edit button to update the location
     ${UpdatedlocationName}=   generate random string    10    [LETTERS]
    And Update location name and save the location    ${UpdatedlocationName}
    Then Verify location saved with updated location name  ${UpdatedlocationName}
    And Click on the location to view the locataion details page
    Then Click on delete Button to delete the location
    And Verify are you sure you want to delete message is displayed
    Then Click on Yes Delete button to confirm the deletion
    Then Verify Location is deleted    ${UpdatedlocationName}
    Then Click on three dots options menu in the location page
    And Delete the merchant by selecting Delete option    ${merchant_name}
    Then verify merchant has deleted successfully    ${merchant_name}
    And Delete plan by selecting on delete option from three dots on merchant page      ${plan_name}
    And Verify plan has deleted from the plan page       ${plan_name}


Scenario : Add Duplicate Location id and verify the validation message
       [Tags]    LOC    robot:skip-on-failure
    Given Launch the Portal App
    And Login to Aperture using     ${admin_test_user_email}        ${admin_test_user_password}
    And Navigate to the Mid Directory
    Then Click on the New plan button
    ${plan_name}=    generate random string     6   [LETTERS]
    Log    Random string: ${plan_name}
    Then Enter Plan Name in to the relevant field    ${plan_name}
    ${plan_ID}=  generate random string     9    [NUMBERS]
    Log    Random string: ${plan_ID}
    And Enter Plan ID in to the relevant field   ${plan_ID}
    ${plan_slug}    generate random string    10    [LETTERS]
    And Enter Slug in to the relevant field   ${plan_slug}
    Then Click on the Add plan button
    And Verify the Plan has saved successfully    ${plan_name}
    And Click on view button to view the plan detail page
    Then Add new Merchant by clicking on New Merchant button
    ${merchant_name}=  generate random string     10    [LETTERS]
    Log    Random string: ${merchant_name}
    And Enter name of the merchant in to relevant field    ${merchant_name}
    Then Save the merchant by clicking on Add Merchant button
    And verify merchant has saved successfully    ${merchant_name}
    Then Click on view button from the merchant detail screen
    And Click on Locations tab
    Then Click on Add Location button to add the location
    ${locationName}=   generate random string    10    [LETTERS]
    Then Enter Name of the locations     ${locationName}
    ${locationID}=   generate random string    10    [NUMBERS]
    And Enter location id    ${locationID}
    And Enter address line field    ${addressLine1}
    And Enter post code field   ${postcode}
    Then click on save button
    Then verify Location save successfully    ${locationName}
    Then Click on Add Location button to add the location
     ${locationName}=   generate random string    10    [LETTERS]
    Then Enter Name of the locations     ${locationName}
    And Enter location id    ${locationID}
    And Enter address line field    ${addressLine1}
    And Enter post code field   ${postcode}
    Then click on save button
    Then verify Enter unique location id Message is getting displayed
    And Click on close button to close the Location window
    Then Click on three dots options menu in the location page
    And Delete the merchant by selecting Delete option    ${merchant_name}
    Then verify merchant has deleted successfully    ${merchant_name}
    And Delete plan by selecting on delete option from three dots on merchant page      ${plan_name}
    And Verify plan has deleted from the plan page       ${plan_name}


Scenario : verify Manditory feilds validation while saving location with physical location
           [Tags]    LOC   robot:skip-on-failure
    Given Launch the Portal App
    And Login to Aperture using     ${admin_test_user_email}        ${admin_test_user_password}
    And Navigate to the Mid Directory
    Then Click on the New plan button
    ${plan_name}=    generate random string     6   [LETTERS]
    Log    Random string: ${plan_name}
    Then Enter Plan Name in to the relevant field    ${plan_name}
    ${plan_ID}=  generate random string     9    [NUMBERS]
    Log    Random string: ${plan_ID}
    And Enter Plan ID in to the relevant field   ${plan_ID}
    ${plan_slug}    generate random string    10    [LETTERS]
    And Enter Slug in to the relevant field   ${plan_slug}
    Then Click on the Add plan button
    And Verify the Plan has saved successfully    ${plan_name}
    And Click on view button to view the plan detail page
    Then Add new Merchant by clicking on New Merchant button
    ${merchant_name}=  generate random string     10    [LETTERS]
    Log    Random string: ${merchant_name}
    And Enter name of the merchant in to relevant field    ${merchant_name}
    Then Save the merchant by clicking on Add Merchant button
    And verify merchant has saved successfully    ${merchant_name}
    Then Click on view button from the merchant detail screen
    And Click on Locations tab
    Then Click on Add Location button to add the location
    Then click on save button
    And Verify the validation messages displayed for all the Manditory feilds
    And Click on close button to close the Location window
    Then Click on three dots options menu in the location page
    And Delete the merchant by selecting Delete option    ${merchant_name}
    Then verify merchant has deleted successfully    ${merchant_name}
    And Delete plan by selecting on delete option from three dots on merchant page      ${plan_name}
    And Verify plan has deleted from the plan page       ${plan_name}




Scenario : verify Manditory feilds validation while saving location without physical location
               [Tags]    LOC    robot:skip-on-failure
    Given Launch the Portal App
    And Login to Aperture using     ${admin_test_user_email}        ${admin_test_user_password}
    And Navigate to the Mid Directory
    Then Click on the New plan button
    ${plan_name}=    generate random string     6   [LETTERS]
    Log    Random string: ${plan_name}
    Then Enter Plan Name in to the relevant field    ${plan_name}
    ${plan_ID}=  generate random string     9    [NUMBERS]
    Log    Random string: ${plan_ID}
    And Enter Plan ID in to the relevant field   ${plan_ID}
    ${plan_slug}    generate random string    10    [LETTERS]
    And Enter Slug in to the relevant field   ${plan_slug}
    Then Click on the Add plan button
    And Verify the Plan has saved successfully    ${plan_name}
    And Click on view button to view the plan detail page
    Then Add new Merchant by clicking on New Merchant button
    ${merchant_name}=  generate random string     10    [LETTERS]
    Log    Random string: ${merchant_name}
    And Enter name of the merchant in to relevant field    ${merchant_name}
    Then Save the merchant by clicking on Add Merchant button
    And verify merchant has saved successfully    ${merchant_name}
    Then Click on view button from the merchant detail screen
    And Click on Locations tab
    Then Click on Add Location button to add the location
    And Uncheck the physical location check box
    Then click on save button
    And Verify the validation messages displayed new location
    And Click on Cancel button to close the Location window
    Then Click on three dots options menu in the location page
    And Delete the merchant by selecting Delete option    ${merchant_name}
    Then verify merchant has deleted successfully    ${merchant_name}
    And Delete plan by selecting on delete option from three dots on merchant page      ${plan_name}
    And Verify plan has deleted from the plan page       ${plan_name}

