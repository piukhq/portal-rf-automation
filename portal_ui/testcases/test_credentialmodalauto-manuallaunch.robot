*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Resource    ../keywords/credentialmodalauto-manuallaunch_keywords.robot
Resource    ../keywords/general_keywords.robot


Suite Setup    Include Browser Drivers
Test Teardown    Kill Browser


*** Test Cases ***
# Scenario1 -Credentials Modal Auto Launch
Credentials Modal Auto Launch
    Given Launch the Portal App
    When I have not yet verified my credentials in Asset Comparator
    Then Credentials modal appears in the middle of the screen

# Scenario2 -Credentials Modal Manual Launch
Credentials Modal Manual Launch
    Given Launch the Portal App
    When I close the Credentials modal
    And I click on the Credentials button
    And Credentials modal appears in the middle of the screen
    Then I see the following elements