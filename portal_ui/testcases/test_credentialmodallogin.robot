*** Settings ***
Resource    ../keywords/credentialmodallogin_keywords.robot
Resource    ../keywords/general_keywords.robot


Suite Setup    Include Browser Drivers
Test Teardown    Kill Browser

*** Test Cases ***
Credential Modal verify credentials
    Given Launch the Portal App
    Given Asset Comparator Landing page is loaded
    When I enter my email address and password in the relevant fields
    And I click verify credentials button
    And I can see credentials verified sucessfully in Dev Staging and Production environment
    Then I close Credential Modal
