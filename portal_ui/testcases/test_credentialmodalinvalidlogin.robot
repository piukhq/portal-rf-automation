*** Settings ***
Resource    ../keywords/general_keywords.robot
Resource    ../keywords/credentialmodalinvalidlogin_keywords.robot
Resource    ../keywords/credentialmodallogin_keywords.robot


Suite Setup    Include Browser Drivers
Test Teardown    Kill Browser

*** Variables ***

${admin_test_user_email} =   auth0_test2@bink.com
${admin_test_user_password} =   Shove9117

*** Test Cases ***
Credential Modal invalid login
     [Tags]    CRE   robot:skip-on-failure
    Given Launch the Portal App
    And Login to Aperture using     ${admin_test_user_email}        ${admin_test_user_password}
    Then Click on the asset Comparator
    And I enter my email address and password incorrectly in the relevant fields
    When I click verify credentials button
    Then I get a negative response from Dev, Staging and Production
