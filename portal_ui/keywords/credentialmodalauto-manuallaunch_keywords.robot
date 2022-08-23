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

I have landed on the Asset Comparator Landing page
    open browser    ${url}  ${browser}
    maximize browser window

I have not yet verified my credentials in Asset Comparator
    wait until page contains    Enter Environment Credentials
    sleep    2

Credentials modal appears in the middle of the screen
    wait until page contains    If you are struggling to verify credentials, email cmorrow@bink.com for support
    capture page screenshot

I close the Credentials modal
    sleep    5
    click element   ${click_closebutton}
    sleep    2

I click on the Credentials button
    click element    ${button_credentials}
    sleep   5

I see the following elements
    wait until page contains    Enter Environment Credentials
    sleep    1
    element should be visible    ${txt_loginEmail}
    element should be enabled    ${txt_loginEmail}
    element should be visible    ${txt_loginPassword}
    element should be enabled    ${txt_loginPassword}
    element should be visible    ${btn_credential}
    element should be enabled    ${btn_credential}
    element text should be    ${label_Development}  Development
    element text should be    ${label_Staging}  Staging
    element text should be    ${label_Sandbox}  Sandbox
    element text should be    ${label_Production}   Production
    element text should be    ${label_Unverfied}    Unverified
    wait until page contains    If you are struggling to verify credentials, email cmorrow@bink.com for support

#I close Credential Modal
    #click element   ${click_close}
    #sleep    2

Kill Browser
    close browser



