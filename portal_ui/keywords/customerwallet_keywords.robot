*** Settings ***
Library    SeleniumLibrary
Variables   ../pageobjects/customerwallet_locators.py
Variables    ../pageobjects/assetcomparator_locators.py

*** Variables ***
${jwt}  eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJidW5kbGVfaWQiOiJjb20uYmluay53YWxsZXQiLCJ1c2VyX2lkIjoicG9ydGFsX3dhbGxldDEzQGJpbmsuY29tIiwic3ViIjo0MzI2MywiaWF0IjoxNjU3NjIzNDczfQ.IUMRwobgKYZR1LBaQpaRCCllC8PiwoN_xNdaSdSTATE

*** Keywords ***

Navigate to the Customer Wallet Page
    click element    ${btn_close}
    click element  ${text_customer_wallet}
    wait until element is visible    ${search_box}


Search a Jwt Token and click on Load User button
    input text    ${search_box}     ${jwt}
    click element    ${btn_load_user}

Verify the grid view of the customer wallet is displayed
    wait until element is visible    ${text_wallet}

