*** Settings ***
Library    SeleniumLibrary
Variables    ../pageobjects/midmanagement_locators.py

*** Keywords ***

Navigate to the Mid Directory
     sleep    1s
     click element    ${label_mid}




Click on the New plan button
   wait until element is visible    ${btn_new_plan}
   click button    ${btn_new_plan}


Enter Plan Name in to the relevant field
    [Arguments]     ${plan_name}
     input text    ${input_plan_name}    ${plan_name}

Enter Plan ID in to the relevant field
    [Arguments]     ${plan_ID}
      input text    ${input_plan_ID}    ${plan_ID}


Enter Slug in to the relevant field
    [Arguments]     ${plan_slug}
     input text    ${input_Plan_slug}    ${plan_slug}


Click on the Add plan button
     click element    ${btn_add_plan}

Verify the Plan has saved successfully
    [Arguments]     ${plan_name}
     reload page
     wait until page contains    ${plan_name}    timeout=10s
     sleep    1s



Click on the three dots on the plan icon
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




Click on Add comment button
      click element    ${btn_comments}
      sleep    5s


Add a comment and click on enter
     [Arguments]     ${comment}
     sleep    1s
       input text    ${txt_add_comment}      ${comment}
       sleep    2s
       click element    ${btn_add_comment_submit}




verify comment has added successfully
         [Arguments]     ${comment}
      wait until page contains      ${comment}     timeout=10s

verify the comment has updated
       [Arguments]    ${updated_comment}
       wait until page contains    ${updated_comment}

close the Comment dialog box
       click element    ${btn_close_comment}
       sleep    3s

Reply to the comment
      [Arguments]     ${Reply_comment}
      sleep    2s
      click element  ${txt_option_threedots_comments}
      click element    ${btn_option_edit_comment}
      sleep    3s
      click element    ${btn_reply}
      input text    ${txt_reply_commentfield}    ${Reply_comment}
      click element    ${btn_reply_comment_submit}



verify the comment has Replied
       [Arguments]    ${Reply_comment}
       wait until page contains     ${Reply_comment}     timeout=10s



Click on Delete option to delete the comment
        click element    ${btn_delete_comment}


verify the comment has deleted
       [Arguments]     ${comment}
        page should contain  ${comment}    timeout=10s


click on the option three dots icon on the comment dialog box
      click element    ${txt_option_threedots_comments}




