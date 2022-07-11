*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/credentialmodallaunch_keywords.robot

Test Setup    Start Browser
Test Teardown    Kill Browser

*** Test Cases ***

LauchCredentialModal
    Validation Title

    Login Credentials
    Close Credential Modal
