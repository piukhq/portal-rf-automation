*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Resource    ../keywords/general_keywords.robot
Resource    ../keywords/customerwallet_keywords.robot


Suite Setup    Include Browser Drivers
Test Teardown    Kill Browser


*** Test Cases ***


#Customer Wallet : Verify the elements
   # Given Launch the Portal App
    #And Navigate to the Customer Wallet Page
    #And Verify the web elements in the Customer Wallet Page

Customer Wallet : JWT Token Search
    Given Launch the Portal App
    And Navigate to the Customer Wallet Page
    When Search a Jwt Token and click on Load User button
    Then Verify the grid view of the customer wallet is displayed


