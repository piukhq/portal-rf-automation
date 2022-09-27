*** Settings ***
Resource    ../keywords/general_keywords.robot
Resource    ../keywords/credentialmodallogin_keywords.robot
Resource    ../keywords/credentialmodaldeletecredential_keywords.robot

Suite Setup    Include Browser Drivers
Test Teardown    Kill Browser


*** Test Cases ***
Credential Modal delete credentials
    Given Launch the Portal App
    When I enter my email address and password in the relevant fields
    And I click verify credentials button
    And I can see credentials verified sucessfully in Dev Staging and Production environment
    When I select the button to delete credentials in Dev,Staging and Production environment
    Then Credential Modal reflects this
    And I close Credential Modal
    And I cannot access plans from Dev, Staging and Production