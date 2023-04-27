*** Settings ***
Resource    ../keywords/credentialmodalauto-manuallaunch_keywords.robot
Resource    ../keywords/general_keywords.robot


Suite Setup    Include Browser Drivers
Test Teardown    Kill Browser

*** Variables ***

${admin_test_user_email} =   auth0_test2@bink.com
${admin_test_user_password} =   Shove9117

*** Test Cases ***
Scenario: Credentials Modal Auto Launch
    [Tags]    login     robot:skip-on-failure
    Given Launch the Portal App
    And Login to Aperture using     ${admin_test_user_email}        ${admin_test_user_password}
    Then Click on the asset Comparator
    When I have not yet verified my credentials in Asset Comparator
    Then Credentials modal appears in the middle of the screen

Scenario: Credentials Modal Manual Launch
    [Tags]    login     robot:skip-on-failure
    Given Launch the Portal App
    And Login to Aperture using     ${admin_test_user_email}        ${admin_test_user_password}
    Then Click on the asset Comparator
    When I close the Credentials modal
    And I click on the Credentials button
    And Credentials modal appears in the middle of the screen
    Then I see the following elements