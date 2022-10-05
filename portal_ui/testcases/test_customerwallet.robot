*** Settings ***
Resource    ../keywords/general_keywords.robot
Resource    ../keywords/customerwallet_keywords.robot

Suite Setup    Include Browser Drivers
Test Teardown    Kill Browser

*** Variables ***

${jwt_linked_elsewhere_card}=   eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJidW5kbGVfaWQiOiJjb20uYmluay53YWxsZXQiLCJ1c2VyX2lkIjoicG9ydGFsX3dhbGxldDEzQGJpbmsuY29tIiwic3ViIjo0MzI2MywiaWF0IjoxNjU3NjIzNDczfQ.IUMRwobgKYZR1LBaQpaRCCllC8PiwoN_xNdaSdSTATE
${jwt}=     eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJidW5kbGVfaWQiOiJjb20uYmluay53YWxsZXQiLCJ1c2VyX2lkIjoiUUF0ZXN0K0Jpbmt3ZWJAYmluay5jb20iLCJzdWIiOjczODY5LCJpYXQiOjE2NjQ4ODQ4MzJ9._pEKrbXfgyhKghzoPoQkr3viL9RkYSdFTm23bu3ueo4
${jwt_invalid}=     eyabcx


*** Test Cases ***
Scenario: Customer Wallet : Verify the elements before token search
   [Tags]    customer_wallet   robot:skip-on-failure
   Given Launch the Portal App
   And Navigate to the Customer Wallet Page
   And Verify the web elements in the Customer Wallet Page during the page load

Scenario: Customer Wallet : JWT Token Search
    [Tags]    customer_wallet   robot:skip-on-failure
    Given Launch the Portal App
    And Navigate to the Customer Wallet Page
    When Search a Jwt Token and click on Load User button   ${jwt}
    Then Verify the grid view of the customer wallet is displayed
    And Verify the schemes listed in the Grid View


Scenario: Customer Wallet : Search using JWT Token with Membership Card in another wallet
    [Tags]    customer_wallet   robot:skip-on-failure
    Given Launch the Portal App
    And Navigate to the Customer Wallet Page
    When Search a Jwt Token and click on Load User button   ${jwt_linked_elsewhere_card}
    Then Verify the grid view of the customer wallet is displayed
    And Verify the scheme for the card in another wallet is listed in the Grid View


Scenario: Customer Wallet : Search using Invalid JWT Token
   [Tags]    customer_wallet   robot:skip-on-failure

    Given Launch the Portal App
    And Navigate to the Customer Wallet Page
    When Search a Jwt Token and click on Load User button   ${jwt_invalid}
    Then Verify the error message   Your search didn't return any results. Please try again

Scenario: Customer Wallet : Verify Transaction table elements
    [Tags]    customer_wallet  robot:skip-on-failure
    Given Launch the Portal App
    And Navigate to the Customer Wallet Page
    When Search a Jwt Token and click on Load User button   ${jwt}
    Then Verify the Transaction table elements

