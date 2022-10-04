*** Settings ***
Library    SeleniumLibrary
Variables    ../pageobjects/assetcomparator_locators.py

*** Variables ***
${email_invalid}    testbink12+pl7@gmail.com
${password_invalid}    Password

*** Keywords ***

I enter my email address and password incorrectly in the relevant fields

    wait until element is visible    ${txt_loginEmail}
    input text    ${txt_loginEmail}    ${email_invalid}
    input password    ${txt_loginpassword}    ${password_invalid}




I get a negative response from Dev, Staging and Production
    element text should be    ${label_dev_failed}    Failed
    sleep    1
    element text should be    ${label_staging_failed}    Failed
    sleep    1
    element text should be    ${label_production_failed}    Failed
    sleep    1
    capture page screenshot