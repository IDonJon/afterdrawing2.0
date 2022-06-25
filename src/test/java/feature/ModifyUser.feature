Feature: Verify different PUT operations using REST-assured
  Scenario: Verify update user
    Given I set PUT user service api for "/users/4"
    And I perform PUT for the user number "4"
    Then I get a 200 status from modify user service