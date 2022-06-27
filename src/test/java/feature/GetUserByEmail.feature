Feature: Verify different GET all operations using REST-assured
  Scenario: Verify one author of the post
    Given I perform GET operation for "/users"
    And I perform GET for the user email "abc@hotmail.com"
    Then I should see the user name as "mAnthony"