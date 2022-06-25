Feature: Verify different POST operations using REST-assured

  Scenario: Create a user
    Given I set POST user service api for "/users"
    When I perform POST user
    Then I get a 200 status from user service