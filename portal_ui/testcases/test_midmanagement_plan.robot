*** Settings ***
Resource    ../keywords/general_keywords.robot
Resource    ../keywords/midmanagement_keywords.robot
Library     String
Library    SeleniumLibrary


Suite Setup    Include Browser Drivers
Test Teardown    Kill Browser

*** Variables ***

${admin_test_user_email} =   auth0_test2@bink.com
${admin_test_user_password} =   Shove9117

*** Test Cases ***
Scenario: Create New Plan and Delete the plan
    [Tags]    MID     robot:skip-on-failure
    Given Launch the Portal App
    And Login to Aperture using     ${admin_test_user_email}        ${admin_test_user_password}
    And Navigate to the Mid Directroy
    Then Click on the New plan button
    ${plan_name}=    generate random string     10    [UPPER]
    Log    Random string: ${plan_name}
    Then Enter Plan Name in to the relevent field    ${plan_name}
    ${plan_ID}=  generate random string     9    [NUMBERS]
    Log    Random string: ${plan_ID}
    And Enter Plan ID in to the relevent feild   ${plan_ID}
    ${plan_slug}    generate random string    10    [LETTERS]
    And Enter Slug in to the relevent field   ${plan_slug}
    Then Click on the Add plan button
    And Verify the Plan has saved sucesfully    ${plan_name}
    Then Click on the three dots on the plan icon
    And Click on delete plan button to delete the created plan      ${plan_name}


Scenario: Create New Plan and Edit the paln and Delete
    [Tags]    MID     robot:skip-on-failure
    Given Launch the Portal App
    And Login to Aperture using     ${admin_test_user_email}        ${admin_test_user_password}
    And Navigate to the Mid Directroy
    Then Click on the New plan button
    ${plan_name}=    generate random string     1   [UPPER]
    Log    Random string: ${plan_name}
    Then Enter Plan Name in to the relevent field    ${plan_name}
    ${plan_ID}=  generate random string     9    [NUMBERS]
    Log    Random string: ${plan_ID}
    And Enter Plan ID in to the relevent feild   ${plan_ID}
    ${plan_slug}    generate random string    10    [LETTERS]
    And Enter Slug in to the relevent field   ${plan_slug}
    Then Click on the Add plan button
    And Verify the Plan has saved sucesfully    ${plan_name}
    Then Click on the three dots on the plan icon
    And Click on the Edit plan
    ${updagtedplan_name}=    generate random string     4    [UPPER]
    Log    Random string: ${updagtedplan_name}
    Then Update the new plan name    ${updagtedplan_name}
    And Click on save changes button
    And verify the plan has saved with all the changes    ${updagtedplan_name}
    Then Click on the three dots on the plan icon
    And Click on delete plan button to delete the updated plan       ${updagtedplan_name}



Scenario: Create New Plan and Add a comment to plan
    [Tags]    MID     robot:skip-on-failure
    Given Launch the Portal App
    And Login to Aperture using     ${admin_test_user_email}        ${admin_test_user_password}
    And Navigate to the Mid Directroy
    Then Click on the New plan button
    ${plan_name}=    generate random string     10   [LETTERS]
    Log    Random string: ${plan_name}
    Then Enter Plan Name in to the relevent field    ${plan_name}
    ${plan_ID}=  generate random string     9    [NUMBERS]
    Log    Random string: ${plan_ID}
    And Enter Plan ID in to the relevent feild   ${plan_ID}
    ${plan_slug}    generate random string    10    [LETTERS]
    And Enter Slug in to the relevent field   ${plan_slug}
    Then Click on the Add plan button
    And Verify the Plan has saved sucesfully    ${plan_name}
    Then Click on the three dots on the plan icon
    And Click on Add comment button
    ${comment}=  generate random string     1    [LETTERS]
    Log    Random string: ${comment}
    Then Add a comment and click on enter    ${comment}
    And verify comment has added successfully     ${comment}
    Then close the Comment dialog box
    Then Click on the three dots on the plan icon
    And Click on delete plan button to delete the created plan      ${plan_name}


Scenario: Create New Plan and Add and Edit comment to plan
    [Tags]    MID    robot:skip-on-failure
    Given Launch the Portal App
    And Login to Aperture using     ${admin_test_user_email}        ${admin_test_user_password}
    And Navigate to the Mid Directroy
    Then Click on the New plan button
    ${plan_name}=    generate random string     10   [LETTERS]
    Log    Random string: ${plan_name}
    Then Enter Plan Name in to the relevent field    ${plan_name}
    ${plan_ID}=  generate random string     9    [NUMBERS]
    Log    Random string: ${plan_ID}
    And Enter Plan ID in to the relevent feild   ${plan_ID}
    ${plan_slug}    generate random string    10    [LETTERS]
    And Enter Slug in to the relevent field   ${plan_slug}
    Then Click on the Add plan button
    And Verify the Plan has saved sucesfully    ${plan_name}
    Then Click on the three dots on the plan icon
    And Click on Add comment button
    ${comment}=  generate random string     1    [LETTERS]
    Log    Random string: ${comment}
    Then Add a comment and click on enter    ${comment}
    And verify comment has added successfully     ${comment}
    Then close the Comment dialog box
    Then Click on the three dots on the plan icon
    And Click on Add comment button
    ${updated_comment}=  generate random string     9    [LETTERS]
    Log    Random string: ${updated_comment}
    Then Edit the Comment   ${updated_comment}
    Then verify the comment has updated     ${updated_comment}
    Then close the Comment dialog box
    Then Click on the three dots on the plan icon
    And Click on delete plan button to delete the created plan      ${plan_name}


Scenario: Create New Plan and Add a comment and delete comment to plan
      [Tags]    MID     robot:skip-on-failure
    Given Launch the Portal App
    And Login to Aperture using     ${admin_test_user_email}        ${admin_test_user_password}
    And Navigate to the Mid Directroy
    Then Click on the New plan button
    ${plan_name}=    generate random string     10   [LETTERS]
    Log    Random string: ${plan_name}
    Then Enter Plan Name in to the relevent field    ${plan_name}
    ${plan_ID}=  generate random string     9    [NUMBERS]
    Log    Random string: ${plan_ID}
    And Enter Plan ID in to the relevent feild   ${plan_ID}
    ${plan_slug}    generate random string    10    [LETTERS]
    And Enter Slug in to the relevent field   ${plan_slug}
    Then Click on the Add plan button
    And Verify the Plan has saved sucesfully    ${plan_name}
    Then Click on the three dots on the plan icon
    And Click on Add comment button
    ${comment}=  generate random string     10    [LETTERS]
    Log    Random string: ${comment}
    Then Add a comment and click on enter    ${comment}
    And verify comment has added successfully     ${comment}
     Then close the Comment dialog box
    Then Click on the three dots on the plan icon
    And Click on Add comment button
    Then click on the option three dots icon on the comment dialog box
    And Click on Delete option to delete the comment
    Then verify the comment has deleted     ${comment}
    Then close the Comment dialog box
    Then Click on the three dots on the plan icon
    And Click on delete plan button to delete the created plan      ${plan_name}



