*** Settings ***
Library    SeleniumLibrary
Library     OperatingSystem
Variables   ../pageobjects/customerwallet_locators.py

*** Variables ***
${browser}  chrome
${url}  https://portal.staging.gb.bink.com/customer-wallets

*** Keywords ***

Customer Wallet Landing page is loaded
    open browser    ${url}  ${browser}
    wait until element is visible    ${search_box}
    maximize browser window

