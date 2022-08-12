@registerConsent  @sanity
Feature: Mid management related endpoint is working as expected
  As a Portal wallet user
  I want to view my wallet with Membership card and Payment Card status and PLL link status as well.


  Scenario Outline: Create, View and Delete Plan

    Given I am a Portal app user
    When I perform POST request to create a new plan by passing unique <plan_name>,<slug>
    And I perform GET request to verify the created plan
    Then I perform a DELETE request to delete the plan


    Examples:
      | plan_name          | slug               |
      | Portal_Test_Plan01 | Portal_Test_Plan01 |


