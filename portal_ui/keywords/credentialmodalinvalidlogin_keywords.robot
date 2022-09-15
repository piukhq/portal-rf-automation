*** Settings ***
Library    SeleniumLibrary
Library     OperatingSystem
Variables    ../pageobjects/locators.py

*** Variables ***
${browser}  chrome
${url}  https://portal.staging.gb.bink.com/asset-comparator
${email_invalid}    testbink12+pl7@gmail.com
${password_invalid}    Password

*** Keywords ***

#Asset Comparator Landing page is loaded
    ###open browser    ${url}  ${browser}
    ##wait until page contains    Enter Environment Credentials
    #maximize browser window


I enter my email address and password incorrectly in the relevant fields

    wait until element is visible    ${txt_loginEmail}
    input text    ${txt_loginEmail}    ${email_invalid}
    input password    ${txt_loginpassword}    ${password_invalid}


#I click verify credentials button
    ##click element    ${btn_credential}
    #sleep    2

I get a negative response from Dev, Staging and Production
    element text should be    ${label_Dev_Failed}    Failed
    sleep    1
    element text should be    ${label_Staging_Failed}    Failed
    sleep    1
    element text should be    ${label_Production_Failed}   Failed
    sleep    1
    capture page screenshot