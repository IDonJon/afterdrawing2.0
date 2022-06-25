Feature: Verify different Delete operations using REST-assured
  Scenario: Delete a User
    Given I set DELETE user service api for "/users/4"
    When I perform DELETE operation for the user number "4"
    Then  I get a 200 status from delete user service