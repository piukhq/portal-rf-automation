*** Settings ***
Library    SeleniumLibrary
Library     OperatingSystem
Variables    ../pageobjects/assetcomparator_locators.py

*** Variables ***
${browser}  chrome
${url}  https://portal.staging.gb.bink.com/asset-comparator
${email}    testbink123+pl7@gmail.com
${password}     Password01

*** Keywords ***

I have not yet verified my credentials in Asset Comparator
    wait until page contains    Enter Environment Credentials
    sleep    2

Credentials modal appears in the middle of the screen
    wait until page contains    If you are struggling to verify credentials, email cmorrow@bink.com for support
    capture page screenshot

I close the Credentials modal
    sleep    5
    click element   ${btn_close}
    sleep    2

I click on the Credentials button
    click element    ${btn_credentials}
    sleep   2

I see the following elements
    wait until page contains    Enter Environment Credentials
    sleep    1
    element should be visible    ${txt_loginEmail}
    element should be enabled    ${txt_loginEmail}
    element should be visible    ${txt_loginPassword}
    element should be enabled    ${txt_loginPassword}
    element should be visible    ${btn_verify_credential}
    element should be enabled    ${btn_verify_credential}
    element text should be    ${label_dev}  Development
    element text should be    ${label_staging}  Staging
    element text should be    ${label_sandbox}    Sandbox
    element text should be    ${label_Production}   Production
    element text should be    ${label_dev_unverified}    Unverified
    element text should be    ${label_staging_unverified}    Unverified
    element text should be    ${label_production_unverified}    Unverified
    wait until page contains    If you are struggling to verify credentials, email cmorrow@bink.com for support





