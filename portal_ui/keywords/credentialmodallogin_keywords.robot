*** Settings ***
Library    SeleniumLibrary
Variables    ../pageobjects/assetcomparator_locators.py

*** Variables ***
${browser}  chrome
${url}  https://portal.staging.gb.bink.com/asset-comparator
${email}    testbink123+pl7@gmail.com
${password}    Password01

*** Keywords ***

Asset Comparator Landing page is loaded
    wait until page contains    Enter Environment Credentials


I enter my email address and password in the relevant fields

    wait until element is visible    ${txt_loginEmail}
    input text    ${txt_loginEmail}    ${email}
    input password    ${txt_loginpassword}    ${password}


I click verify credentials button
    click element    ${btn_verify_credential}
    sleep    2


I can see credentials verified sucessfully in Dev Staging and Production environment
    element text should be    ${label_dev_verified}    Verified
    sleep    1
    element text should be    ${label_staging_verified}    Verified
    sleep    1
    element text should be    ${label_production_verified}    Verified
    sleep    1
    capture page screenshot

I close Credential Modal
    click element   ${btn_close}
    sleep    1
