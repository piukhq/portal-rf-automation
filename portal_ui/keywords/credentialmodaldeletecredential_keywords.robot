*** Settings ***
Library    SeleniumLibrary
Variables    ../pageobjects/assetcomparator_locators.py


*** Keywords ***
I select the button to delete credentials in Dev,Staging and Production environment
    click element    ${btn_dev_delete}
    sleep    1
    click element    ${btn_staging_delete}
    sleep    1
    scroll element into view     ${btn_production_delete}
    click element    ${btn_production_delete}
    sleep    1

Credential Modal reflects this
    element text should be    ${label_dev_unverified}    Unverified
    element text should be    ${label_staging_unverified}    Unverified
    element text should be    ${label_production_unverified}    Unverified

I cannot access plans from Dev, Staging and Production
    wait until page contains    Welcome to the Bink Asset Comparator
