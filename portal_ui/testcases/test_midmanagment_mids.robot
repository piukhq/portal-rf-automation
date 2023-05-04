*** Settings ***
Resource    ../keywords/general_keywords.robot
Resource    ../keywords/midmanagement_keywords.robot
Resource    ../keywords/midmanagmentmerchant_keywords.robot
Resource    ../keywords/midmanagmentmerchants_locations_keywords.robot

Resource    ../keywords/midmanagmentmerchants_mids_keywords.robot
Library     String
Library    SeleniumLibrary
Library    FakerLibrary  locale=de_DE    seed=124


Suite Setup    Include Browser Drivers
Test Teardown    Kill Browser

*** Variables ***

${admin_test_user_email} =   auth0_test2@bink.com
${admin_test_user_password} =   Shove9117

*** Test Cases ***

Scenario : Add VISA AMEX and MASTER MIDS and delete plan
     [Tags]    MIDS     robot:skip-on-failure
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
    ${merchant_name}=  generate random string     5    [LETTERS]
    Log    Random string: ${merchant_name}
    And Enter name of the merchant in to relevant field    ${merchant_name}
    Then Save the merchant by clicking on Add Merchant button
    And verify merchant has saved successfully    ${merchant_name}
    Then Click on view button from the merchant detail screen
    ${visa_mid}=  generate random string     5    [NUMBER]
    Log    Random string: ${visa_mid}
    Then Click on visa Mid button and enter MID value in to text box to add the VISA MID    ${visa_mid}
     ${bin_value}=  generate random string     5    [NUMBERS]
    Log    Random string: ${bin_value}
    Then Enter BIN value in to the text box      ${bin_value}
    And Click on Add MID button
    And verify visa Mid added successfully    ${visa_mid}
    ${master_mid}=  generate random string     5    [NUMBER]
    Log    Random string: ${master_mid}
    Then Click on Add Master Mid button and Enter MID value in to text box to add the Master Mid    ${master_mid}
    And Click on Add MID button
    And verify Master Mid added successfully    ${master_mid}
    ${amex_mid}=  generate random string     5    [NUMBER]
    Log    Random string: ${amex_mid}
    Then Click on Amex Mid button and Enter MID value in to text box to add the Master Mid   ${amex_mid}
    And Click on Add MID button
    And verify Amex Mid added successfully    ${amex_mid}
    Then Delete the Merchant by selecting three dots options from the Mids screen    ${merchant_name}
    And verify merchant has deleted successfully    ${merchant_name}
    And Delete plan by selecting on delete option from three dots on merchant page      ${plan_name}
    And Verify plan has deleted from the plan page       ${plan_name}


Scenario : Create Duplicate Mid and verify validation message
      [Tags]    MIDS     robot:skip-on-failure
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
    ${merchant_name}=  generate random string     5    [LETTERS]
    Log    Random string: ${merchant_name}
    And Enter name of the merchant in to relevant field    ${merchant_name}
    Then Save the merchant by clicking on Add Merchant button
    And verify merchant has saved successfully    ${merchant_name}
    Then Click on view button from the merchant detail screen
    ${visa_mid}=  generate random string     5    [NUMBER]
    Log    Random string: ${visa_mid}
    Then Click on visa Mid button and enter MID value in to text box to add the VISA MID    ${visa_mid}
     ${bin_value}=  generate random string     5    [NUMBERS]
    Log    Random string: ${bin_value}
    Then Enter BIN value in to the text box      ${bin_value}
    And Click on Add MID button
    And verify visa Mid added successfully    ${visa_mid}
    Then Click on visa Mid button and enter MID value in to text box to add the VISA MID    ${visa_mid}
    And Click on Add MID button
    Then Enter BIN value in to the text box      ${bin_value}
    Then Verify validation message displayed when we enter the duplicate Mid value
    And close the Visa mid dialog box
    Then Delete the Merchant by selecting three dots options from the Mids screen    ${merchant_name}
    And verify merchant has deleted successfully    ${merchant_name}
    And Delete plan by selecting on delete option from three dots on merchant page      ${plan_name}
    And Verify plan has deleted from the plan page       ${plan_name}



Scenario : Create Mid and Bulk delete the MID and cancel the deletion and verify mid has not deleted
      [Tags]    MIDS     robot:skip-on-failure
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
    ${merchant_name}=  generate random string     5    [LETTERS]
    Log    Random string: ${merchant_name}
    And Enter name of the merchant in to relevant field    ${merchant_name}
    Then Save the merchant by clicking on Add Merchant button
    And verify merchant has saved successfully    ${merchant_name}
    Then Click on view button from the merchant detail screen
    ${visa_mid}=  generate random string     5    [NUMBER]
    Log    Random string: ${visa_mid}
    Then Click on visa Mid button and enter MID value in to text box to add the VISA MID    ${visa_mid}
     ${bin_value}=  generate random string     5    [NUMBERS]
    Log    Random string: ${bin_value}
    Then Enter BIN value in to the text box      ${bin_value}
    And Click on Add MID button
    And verify visa Mid added successfully    ${visa_mid}
    Then select all the mids and clcik on delete
    Then Close the Delete Mids dialog box
    And verify the Mid has not deleted    ${visa_mid}
    Then Delete the Merchant by selecting three dots options from the Mids screen    ${merchant_name}
    And verify merchant has deleted successfully    ${merchant_name}
    And Delete plan by selecting on delete option from three dots on merchant page      ${plan_name}
    And Verify plan has deleted from the plan page       ${plan_name}



Scenario : Create Mid and Bulk delete the MID and Confirm the deletion and Mids are deleted
   [Tags]    MIDS1    robot:skip-on-failure
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
    ${merchant_name}=  generate random string     5    [LETTERS]
    Log    Random string: ${merchant_name}
    And Enter name of the merchant in to relevant field    ${merchant_name}
    Then Save the merchant by clicking on Add Merchant button
    And verify merchant has saved successfully    ${merchant_name}
    Then Click on view button from the merchant detail screen
    ${visa_mid}=  generate random string     5    [NUMBER]
    Log    Random string: ${visa_mid}
    Then Click on visa Mid button and enter MID value in to text box to add the VISA MID    ${visa_mid}
     ${bin_value}=  generate random string     5    [NUMBERS]
    Log    Random string: ${bin_value}
    Then Enter BIN value in to the text box      ${bin_value}
    And Click on Add MID button
    And verify visa Mid added successfully    ${visa_mid}
    ${master_mid}=  generate random string     5    [NUMBER]
    Log    Random string: ${master_mid}
    Then Click on Add Master Mid button and Enter MID value in to text box to add the Master Mid    ${master_mid}
    And Click on Add MID button
    And verify Master Mid added successfully    ${master_mid}
    ${amex_mid}=  generate random string     5    [NUMBER]
    Log    Random string: ${amex_mid}
    Then Click on Amex Mid button and Enter MID value in to text box to add the Master Mid   ${amex_mid}
    And Click on Add MID button
    Then select all the mids and clcik on delete
    ${words}=  FakerLibrary.Words
    And Click on delete button    ${words}
    Then Click on Delete Mids button
    Then verify that mid has deleted    ${visa_mid}  ${master_mid}   ${amex_mid}
    Then Delete the Merchant by selecting three dots options from the Mids screen    ${merchant_name}
    And verify merchant has deleted successfully    ${merchant_name}
    And Delete plan by selecting on delete option from three dots on merchant page      ${plan_name}
    And Verify plan has deleted from the plan page       ${plan_name}
