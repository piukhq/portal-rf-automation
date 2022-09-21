*** Settings ***
Resource    ../keywords/general_keywords.robot
Resource    ../keywords/credentialmodalinvalidlogin_keywords.robot
Resource    ../keywords/credentialmodallogin_keywords.robot


Suite Setup    Include Browser Drivers
Test Teardown    Kill Browser

*** Test Cases ***
Credential Modal invalid login
    Given Launch the Portal App
    And I enter my email address and password incorrectly in the relevant fields
    When I click verify credentials button
    Then I get a negative response from Dev, Staging and Production
