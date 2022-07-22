*** Settings ***
Library    SeleniumLibrary
# Resource    portal_ui/test_resources/keywords/credentialmodallaunch_keywords.robot
Resource    ../../portal_ui/test_resources/keywords/credentialmodallaunch_keywords.robot

Test Setup    Start Browser
Test Teardown    Kill Browser

*** Test Cases ***

LauchCredentialModal
    Validation Title

    Login Credentials
    Close Credential Modal
