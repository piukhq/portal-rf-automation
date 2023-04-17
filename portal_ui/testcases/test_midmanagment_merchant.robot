*** Settings ***
Resource    ../keywords/general_keywords.robot
Resource    ../keywords/midmanagement_keywords.robot
Resource    ../keywords/midmanagmentmerchant_keywords.robot
Library     String
Library    SeleniumLibrary


Suite Setup    Include Browser Drivers
Test Teardown    Kill Browser

*** Variables ***

${admin_test_user_email} =   auth0_test2@bink.com
${admin_test_user_password} =   Shove9117

*** Test Cases ***
Scenario:Create Plan, view paln and add two merchants and veiw Merchants and delete the paln and verify paln has deleted
    [Tags]    MER     robot:skip-on-failure
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
    ${merchant_name}=  generate random string     9    [LETTERS]
    Log    Random string: ${merchant_name}
    And Enter name of the merchant in to relevant field    ${merchant_name}
    Then Save the merchant by clicking on Add Merchant button
    And verify merchant has saved successfully    ${merchant_name}
    Then Add new Merchant by clicking on New Merchant button
     ${newmerchant_name}=  generate random string     9    [LETTERS]
    Log    Random string: ${newmerchant_name}
    Then Enter another merchant in to the relevent feild     ${newmerchant_name}
    And Save the merchant by clicking on Add Merchant button
    And verify the paln has all the merchants added to plan      ${merchant_name}     ${newmerchant_name}
    And Delete plan by selecting on delete option from three dots on merchant page      ${plan_name}
    And Verify plan has deleted from the plan page       ${plan_name}



Scenario: Add plan and View plan , Add merchant and Edit merchant and delete the Merchant
    [Tags]    MER    robot:skip-on-failure
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
    And Verify the Plan has saved sucesfully    ${plan_name}
    And Click on view button to view the plan detail page
    Then Add new Merchant by clicking on New Merchant button
    ${merchant_name}=  generate random string     1    [LETTERS]
    Log    Random string: ${merchant_name}
    And Enter name of the merchant in to relevant field    ${merchant_name}
    Then Save the merchant by clicking on Add Merchant button
    And verify merchant has saved successfully    ${merchant_name}
    Then Click on Edit Merchant from three dots options menu near the Merchant
    ${updatedMerchant_name}=    generate random string     4    [UPPER]
    Log    Random string: ${updatedMerchant_name}
    And Update the Merchant name    ${updatedMerchant_name}
    And Click on the Save changes button in Edit merchant dialog box
    And verify merchant has saved successfully with updated details    ${updatedMerchant_name}
    And Delete plan by selecting on delete option from three dots on merchant page      ${plan_name}
    And Verify plan has deleted from the plan page       ${plan_name}


Scenario : Add Merchant and delete Merchant
     [Tags]    MER    robot:skip-on-failure
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
    Then Click on three dots options menu near the Merchant
    And Delete the merchant by selecting option Delete     ${merchant_name}
    Then verify merchant has deleted successfully    ${merchant_name}
    And Delete plan by selecting on delete option from three dots on merchant page      ${plan_name}
    And Verify plan has deleted from the plan page       ${plan_name}
