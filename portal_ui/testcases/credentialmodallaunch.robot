*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Resource    ../keywords/credentialmodallaunch_keywords.robot


Suite Setup    Include Browser Drivers
#Test Setup    Start Browser
Test Teardown    Kill Browser


*** Test Cases ***

LauchCredentialModal
    #Include Browser Drivers
    Setup chromedriver
    Start Browser
    Validation Title
    Login Credentials
    Close Credential Modal
   # Kill Browser

