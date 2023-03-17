*** Settings ***
Library    SeleniumLibrary
Variables    ../pageobjects/midmanagement_locators.py

*** Variables ***
${email}    testbink123+pl7@gmail.com
${password}    Password01

*** Keywords ***

Navigate to the Mid Directroy
     click element    ${label_mid}




Click on the New plan button
   wait until element is visible    ${btn_new_plan}
   click button    ${btn_new_plan}


Enter Plan Name in to the relevent feild
    [Arguments]     ${plan_name}
     input text    ${input_plan_name}    ${plan_name}

Enter Plan ID in to the relevent feild
    [Arguments]     ${plan_ID}
      input text    ${input_plan_ID}    ${plan_ID}


Enter Slug in to the relevent feild
    [Arguments]     ${plan_slug}
     input text    ${input_Plan_slug}    ${plan_slug}


Click on the Add plan button
     click element    ${btn_add_plan}

Verify the Plan has saved sucesfully
    [Arguments]     ${plan_name}
     reload page
     wait until page contains    ${plan_name}    timeout=10s


Click on the three dots on the plan icon and Click on Edit
     sleep    2s
     click element    ${btn_threeDots}

Click on the Edit plan
     click element    ${button_edit}

Update the new plan name
      [Arguments]     ${updatedplan_name}
      sleep    3s
      click element  ${txt_updated_plan_name}
      press keys    ${txt_updated_plan_name}    CTRL+a
      press keys    ${txt_updated_plan_name}    BACKSPACE
      input text    ${input_plan_name}    ${updatedplan_name}
      ${text}=        get value     ${input_plan_name}
      Log             ${text}

Click on save changes button
       click element      ${button_saveChanges}
       sleep    3s
       ${txt} =    get text    ${txt_tile}



verify the plan has saved with all the changes
     [Arguments]     ${updatedplan_name}
      wait until page contains      ${updatedplan_name}     timeout=10s


Click on delete plan button to delete the created plan
       [Arguments]     ${plan_name}
       click element    ${btn_delete_plan_three_dot_option}
       sleep    2s
       input text    ${txt_planName_to_delete}     ${plan_name}
       click element    ${btn_delete_plan}

Click on delete plan button to delete the updated plan
     [Arguments]     ${updatedplan_name}
       click element    ${btn_delete_plan_three_dot_option}
       sleep    2s
       input text    ${txt_planName_to_delete}     ${updatedplan_name}
       click element    ${btn_delete_plan}

Click on the plan view button
     click element    ${btn_plan_view}

Add new merchant for the plan
     sleep    2s
     click element    ${btn_new_merchant}

Enter Merchant name in the relevent feild
     input text    ${input_box_name}




