*** Settings ***
Library    SeleniumLibrary
Library     OperatingSystem
Variables    ../pageobjects/locators.py

*** Variables ***
${browser}  chrome
${url}  https://portal.staging.gb.bink.com/asset-comparator
${email}    testbink123+pl7@gmail.com
${password}    Password01

*** Keywords ***

Include Browser Drivers
    Append To Environment Variable  PATH   ${EXECDIR}/portal_ui/resources/driver

Setup chromedriver
  Set Environment Variable  webdriver.chrome.driver  ${EXECDIR}/portal_ui/resources/driver/chromedriver
  log   ${EXECDIR}/portal_ui/resources/driver/chromedriver

Asset Comparator Landing page is loaded
    open browser    ${url}  ${browser}
    wait until page contains    Enter Environment Credentials
    maximize browser window


I enter my email address and password in the relevant fields

    wait until element is visible    ${txt_loginEmail}
    input text    ${txt_loginEmail}    ${email}
    input password    ${txt_loginpassword}    ${password}


I click verify credentials button
    click element    ${btn_verifycredential}
    sleep    2


I can see credentials verified sucessfully in Dev Staging and Production environment
    element text should be    ${label_Dev_Verified}   Verified
    sleep    1
    element text should be    ${label_Staging_Verified}   Verified
    sleep    1
    element text should be    ${label_Production_Verified}    Verified
    sleep    1
    capture page screenshot

I close Credential Modal
    click element   ${click_closebutton}
    sleep    2

Kill Browser
    close browser
