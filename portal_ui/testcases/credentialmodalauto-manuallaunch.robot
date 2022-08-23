*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Resource    ../keywords/credentialmodalauto-manuallaunch_keywords.robot



Suite Setup    Include Browser Drivers
Test Teardown    Kill Browser


*** Test Cases ***
# Scenario1 -Credentials Modal Auto Launch
Credentials Modal Auto Launch
    Setup chromedriver
    Given I have landed on the Asset Comparator Landing page
    When I have not yet verified my credentials in Asset Comparator
    Then Credentials modal appears in the middle of the screen

# Scenario2 -Credentials Modal Manual Launch
Credentials Modal Manual Launch
    Given I have landed on the Asset Comparator Landing page
    When I close the Credentials modal
    And I click on the Credentials button
    And Credentials modal appears in the middle of the screen
    Then I see the following elements