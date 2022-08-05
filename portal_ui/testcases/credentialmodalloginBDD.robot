*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Resource    ../keywords/credentialmodalloginBDD_keywords.robot


Suite Setup    Include Browser Drivers
Test Teardown    Kill Browser


*** Test Cases ***
Credential Modal verify credentials
    Setup chromedriver
    Given Asset Comparator Landing page is loaded
    When I enter my email address and password in the relevant fields
    And I click verify credentials button
    And I can see credentials verified sucessfully in Dev Staging and Production environment
    Then I close Credential Modal
