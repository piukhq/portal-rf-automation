*** Settings ***
Library    SeleniumLibrary
Variables    ../pageobjects/assetcomparator_locators.py

*** Keywords ***
I load the plan list
    click element   ${btn_drp_planlist}
    sleep    3

I see the plans from Dev,Staging and Production
    scroll element into view   ${btn_zizzi}
    sleep   2
    execute javascript    window.scrollTo(0,document.body.scrollHeight)
    element text should be    ${btn_zizzi}    Zizzi
    sleep    1
    element text should be    ${label_zizzi_D}   D
    sleep    1
    element text should be    ${label_zizzi_S}  S
    sleep    1
    element text should be    ${label_zizzi_P}   P
    capture page screenshot


