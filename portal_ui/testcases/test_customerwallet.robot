*** Settings ***
Resource    ../keywords/general_keywords.robot
Resource    ../keywords/customerwallet_keywords.robot

Suite Setup    Include Browser Drivers
Test Teardown    Kill Browser

*** Variables ***

${jwt_linked_elsewhere_card}=   eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJidW5kbGVfaWQiOiJjb20uYmluay53YWxsZXQiLCJ1c2VyX2lkIjoicG9ydGFsX3dhbGxldDEzQGJpbmsuY29tIiwic3ViIjo0MzI2MywiaWF0IjoxNjU3NjIzNDczfQ.IUMRwobgKYZR1LBaQpaRCCllC8PiwoN_xNdaSdSTATE
${jwt}=     eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJidW5kbGVfaWQiOiJjb20uYmluay53YWxsZXQiLCJ1c2VyX2lkIjoiYm1hbWlAYmluay5jb20iLCJzdWIiOjIyMTQsImlhdCI6MTY3OTY3NDk0OX0.sr28hGwcAspaUoUfcdRyvp2c3zdjb9mWoCYeQskjo44
${jwt_invalid}=     eyabcx
${admin_test_user_email} =   auth0_test2@bink.com
${admin_test_user_password} =   Shove9117


*** Test Cases ***
Scenario: Customer Wallet : Verify the elements before token search
   [Tags]    customer_wallet   robot:skip-on-failure
   Given Launch the Portal App
   And Login to Aperture using     ${admin_test_user_email}        ${admin_test_user_password}
   And Navigate to the Customer Wallet Page
   And Verify the web elements in the Customer Wallet Page during the page load

Scenario: Customer Wallet : JWT Token Search
    [Tags]    customer_wallet   robot:skip-on-failure
    Given Launch the Portal App
    And Login to Aperture using     ${admin_test_user_email}        ${admin_test_user_password}
    And Navigate to the Customer Wallet Page
    When Search a Jwt Token and click on Load User button   ${jwt}
    Then Verify the grid view of the customer wallet is displayed
    And Verify the schemes listed in the Grid View


Scenario: Customer Wallet : Search using JWT Token with Membership Card in another wallet
    [Tags]    customer_wallet   robot:skip-on-failure
    Given Launch the Portal App
    And Login to Aperture using     ${admin_test_user_email}        ${admin_test_user_password}
    And Navigate to the Customer Wallet Page
    When Search a Jwt Token and click on Load User button   ${jwt_linked_elsewhere_card}
    Then Verify the grid view of the customer wallet is displayed
    And Verify the scheme for the card in another wallet is listed in the Grid View


Scenario: Customer Wallet : Search using Invalid JWT Token
   [Tags]    customer_wallet   robot:skip-on-failure

    Given Launch the Portal App
    And Login to Aperture using     ${admin_test_user_email}        ${admin_test_user_password}
    And Navigate to the Customer Wallet Page
    When Search a Jwt Token and click on Load User button   ${jwt_invalid}
    Then Verify the error message   Your search didn't return any results. Please try again

Scenario: Customer Wallet : Verify Transaction table elements
    [Tags]    customer_wallet  robot:skip-on-failure
    Given Launch the Portal App
    And Login to Aperture using     ${admin_test_user_email}        ${admin_test_user_password}
    And Navigate to the Customer Wallet Page
    When Search a Jwt Token and click on Load User button   ${jwt}
    Then Verify the Transaction table elements

