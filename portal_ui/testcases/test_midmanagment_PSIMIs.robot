*** Settings ***
Resource    ../keywords/general_keywords.robot
Resource    ../keywords/midmanagement_keywords.robot
Resource    ../keywords/midmanagmentmerchant_keywords.robot
Resource    ../keywords/midmanagmentmerchants_mids_keywords.robot
Resource    ../keywords/midmanagmentmerchants_locations_keywords.robot
Resource    ../keywords/midmanagmentmerchants_secondarymids_keywords.robot
Resource    ../keywords/midmanagmentmerchants_PSIMIs_keywords.robot
Library     String
Library    SeleniumLibrary
Library    FakerLibrary  locale=de_DE    seed=124


Suite Setup    Include Browser Drivers
Test Teardown    Kill Browser

*** Variables ***

${admin_test_user_email} =   auth0_test2@bink.com
${admin_test_user_password} =   Shove9117

*** Test Cases ***
Scenario :Add Visa Master PSIMIs to the merchant and Bulk delete the PSIMIs
              [Tags]    PSIMIS    robot:skip-on-failure
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
    Then Uncheck the physical location check box
    Then click on save button
    Then verify Location save successfully    ${locationName}
    And Click on secondary Mids tab
    ${visa_Secmid}=  generate random string     5    [NUMBERS]
    Log    Random string: ${visa_Secmid}
    Then Click on Add Visa button and enter Visa secondary Mids    ${visa_Secmid}
    ${master_Secmid}=  generate random string     5    [NUMBERS]
    Log    Random string: ${master_Secmid}
    And Click on Add Master button and enter Master secondary Mids    ${master_Secmid}
    Then Verify visa and master secondary Mids added successfully     ${visa_Secmid}     ${master_Secmid}
    And Click on PSIMIs mids tab
    ${visa_Psimis}=  generate random string     5    [NUMBERS]
    Log    Random string: ${visa_Psimis}
    Then Click on Add visa button to add visa PSIMIs       ${visa_Psimis}
    ${Master_Psimis}=  generate random string     5    [NUMBERS]
    Log    Random string: ${Master_Psimis}
    Then Click on Add Master button to add master PSIMIs    ${Master_Psimis}
    And Veirfy visa and master PSIMIs addeded sucussfully    ${visa_Psimis}     ${Master_Psimis}
    Then select all the mids and clcik on delete
    ${words}=  FakerLibrary.Words
    And Click on delete button    ${words}
    Then Click on Delete PSIMIs button
    And verify PSIMIs Deleted successfully    ${visa_Psimis}     ${Master_Psimis}
    Then Delete the Merchant by selecting three dots options from the Mids screen    ${merchant_name}
    And verify merchant has deleted successfully    ${merchant_name}
    And Delete plan by selecting on delete option from three dots on merchant page      ${plan_name}
    And Verify plan has deleted from the plan page       ${plan_name}


Scenario:Add Visa and Master PSIMIs and add a comment to PSIMIs, and Reply to the comment and delete the PSIMIs
                 [Tags]    PSIMIS    robot:skip-on-failure
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
    And Click on PSIMIs mids tab
    ${visa_Psimis}=  generate random string     5    [NUMBERS]
    Log    Random string: ${visa_Psimis}
    Then Click on Add visa button to add visa PSIMIs       ${visa_Psimis}
    ${Master_Psimis}=  generate random string     5    [NUMBERS]
    Log    Random string: ${Master_Psimis}
    Then Click on Add Master button to add master PSIMIs    ${Master_Psimis}
    And Veirfy visa and master PSIMIs addeded sucussfully    ${visa_Psimis}     ${Master_Psimis}
    Then Click on threedots option and click commnets option
    ${comment}=  generate random string     10    [LETTERS]
    Log    Random string: ${comment}
    Then Enter comments in the comment textbox     ${comment}
    And verify comment has added successfully      ${comment}
    Then close the Comment dialog box
    ${Reply_comment}=  generate random string     9    [LETTERS]
    Log    Random string: ${Reply_comment}
    Then Reply to the comment      ${Reply_comment}
    Then verify the comment has Replied     ${Reply_comment}
    Then close the Comment dialog box
    Then Delete the Merchant by selecting three dots options from the Mids screen    ${merchant_name}
    And verify merchant has deleted successfully    ${merchant_name}
    And Delete plan by selecting on delete option from three dots on merchant page      ${plan_name}
    And Verify plan has deleted from the plan page       ${plan_name}








