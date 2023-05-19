*** Settings ***
Library    SeleniumLibrary
Library     OperatingSystem
Variables   ../pageobjects/aperturelogin_locators.py
Variables   ../pageobjects/assetcomparator_locators.py



*** Variables ***
${browser}  chrome
${url}      %{WEBSITE_URL}
${org_name}     Bink


*** Keywords ***
Include Browser Drivers
    ${chrome_options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome_options}    add_argument    --disable-extensions
    Call Method    ${chrome_options}    add_argument    --headless
    Call Method    ${chrome_options}    add_argument    --disable-gpu
    Call Method    ${chrome_options}    add_argument    --no-sandbox
    Call Method    ${chrome_options}    add_argument    window-size\=1440,813
    Create Webdriver    Chrome    chrome_options=${chrome_options}



Launch the Portal App
    Go To   ${url} 

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
#    wait until element is visible    ${text_enter_env_credentials}
#    click element   ${btn_close}


Click on the asset Comparator
       click element    ${btn_asset_comparator}

Kill Browser
    close browser
