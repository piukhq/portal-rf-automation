*** Settings ***
Resource    ../keywords/credentialmodallogin_keywords.robot
Resource    ../keywords/general_keywords.robot
Resource    ../keywords/planmenu_keywords.robot


Suite Setup    Include Browser Drivers
Test Teardown    Kill Browser

*** Test Cases ***
Credential Modal verify credentials
    Given Launch the Portal App
    When I enter my email address and password in the relevant fields
    And I click verify credentials button
    And I can see credentials verified sucessfully in Dev Staging and Production environment
    And I close Credential Modal
    And I load the plan list
    Then I see the plans from Dev,Staging and Production
