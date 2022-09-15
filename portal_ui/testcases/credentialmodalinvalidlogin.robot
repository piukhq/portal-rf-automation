*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Resource    ../keywords/credentialmodalloginBDD_keywords.robot
Resource    ../keywords/credentialmodalinvalidlogin_keywords.robot


Suite Setup    Include Browser Drivers
Test Teardown    Kill Browser

*** Test Cases ***
Credential Modal invalid login
    Setup chromedriver
    Given Asset Comparator Landing page is loaded
    And I enter my email address and password incorrectly in the relevant fields
    When I click verify credentials button
    Then I get a negative response from Dev, Staging and Production
