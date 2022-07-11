*** Settings ***
Library    SeleniumLibrary
Variables    ../pageobjects/locators.py

*** Variables ***
${browser}  chrome
${url}  https://portal.staging.gb.bink.com/asset-comparator
${email}    testbink123+pl7@gmail.com
${password}     Password01

*** Keywords ***
Start Browser
    open browser    ${url}  ${browser}
   # wait until page contains    ${url}
    maximize browser window

Validation Title
    title should be    Bink Portal

Login Credentials
    input text    ${txt_loginEmail}     ${email}
    input password    ${txt_loginpassword}      ${password}
    click element    ${btn_credential}
    sleep    5

Close Credential Modal
    sleep    2
    click element   ${click_close}
    sleep    2

Kill Browser
    close browser




