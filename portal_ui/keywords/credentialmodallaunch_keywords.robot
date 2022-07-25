*** Settings ***
Library    SeleniumLibrary
Library     OperatingSystem
Variables    ../pageobjects/locators.py

*** Variables ***
${browser}  chrome
${url}  https://portal.staging.gb.bink.com/asset-comparator
${email}    testbink123+pl7@gmail.com
${password}     Password01

*** Keywords ***

Include Browser Drivers
    Append To Environment Variable  PATH   ${EXECDIR}/portal_ui/resources/driver

Setup chromedriver
  Set Environment Variable  webdriver.chrome.driver  ${EXECDIR}/portal_ui/resources/driver/chromedriver
  log   ${EXECDIR}/portal_ui/resources/driver/chromedriver

Start Browser
    #create webdriver    ${browser}  #executable_path=${EXECDIR}/driver/chromedriver
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




