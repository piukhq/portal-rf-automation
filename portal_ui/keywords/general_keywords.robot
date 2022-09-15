*** Settings ***
Library    SeleniumLibrary
Library     OperatingSystem


*** Variables ***
${browser}  chrome
${url}  https://portal.staging.gb.bink.com/asset-comparator
${email}    testbink123+pl7@gmail.com
${password}    Password01

*** Keywords ***

Include Browser Drivers
    Append To Environment Variable  PATH   ${EXECDIR}/portal_ui/resources/driver
    Set Environment Variable  webdriver.chrome.driver  ${EXECDIR}/portal_ui/resources/driver/chromedriver
    log   ${EXECDIR}/portal_ui/resources/driver/chromedriver

Launch the Portal App
    open browser   ${url}  ${browser}
    maximize browser window


Kill Browser
    close browser
