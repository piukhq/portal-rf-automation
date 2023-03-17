*** Settings ***
Library    SeleniumLibrary
Library     OperatingSystem
Variables   ../pageobjects/aperturelogin_locators.py
Variables   ../pageobjects/assetcomparator_locators.py



*** Variables ***
${browser}  chrome
${url}  https://portal.staging.gb.bink.com/asset-comparator
${org_name}     Bink


*** Keywords ***

Include Browser Drivers
    Append To Environment Variable  PATH   ${EXECDIR}/portal_ui/resources/driver
    Set Environment Variable  webdriver.chrome.driver  ${EXECDIR}/portal_ui/resources/driver/chromedriver
    log   ${EXECDIR}/portal_ui/resources/driver/chromedriver

Launch the Portal App
    open browser   ${url}  ${browser}
    maximize browser window

Login to Aperture using
    [Arguments]     ${admin_test_user_email}        ${admin_test_user_password}

    input text    ${input_org_name}   Bink
    click button  ${btn_continue}
    click button  ${btn_continue_with_bink}
    wait until element is visible    ${input_email}
    input text    ${input_email}       ${admin_test_user_email}
    click button  ${btn_next}
    wait until element is visible    ${input_password}
    input text    ${input_password}     ${admin_test_user_password}
    wait until element is visible    ${btn_sign_in}
    click button  ${btn_sign_in}
    wait until element is visible    ${text_enter_env_credentials}
    click element   ${btn_close}

Kill Browser
    close browser
