*** Settings ***
Library    SeleniumLibrary
Variables   ../pageobjects/customerwallet_locators.py
Variables    ../pageobjects/assetcomparator_locators.py


*** Keywords ***

Navigate to the Customer Wallet Page
    click element    ${btn_close}
    click element  ${text_customer_wallet}
    wait until element is visible    ${search_box}



Search a Jwt Token and click on Load User button
    [Arguments]     ${jwt}
    input text    ${search_box}     ${jwt}
    click element    ${btn_load_user}


Verify the grid view of the customer wallet is displayed
    wait until element is visible    ${text_wallet}

Verify the schemes listed in the Grid View
   wait until element is visible    ${icon_wallet_schemes}
   ${count}=     get element count   ${icon_wallet_schemes} |
  # log to console    ${count}

Verify the scheme for the card in another wallet is listed in the Grid View
     wait until element is visible    ${icon_linked_else_schemes}


Verify the web elements in the Customer Wallet Page during the page load
    wait until element is visible    ${label_lookup}
    wait until element is visible    ${label_jwt}
    wait until element is visible    ${search_box}
    wait until element is visible    ${btn_load_user}

Verify the Transaction table elements
    wait until element is visible    ${text_transactions}
    wait until element is visible    ${dropdown_transactions}
    wait until element is visible    ${text_rewards}
    wait until element is visible    ${text_date}
    wait until element is visible    ${text_details}
    wait until element is visible    ${text_amount}
    wait until element is visible    ${text_change}


