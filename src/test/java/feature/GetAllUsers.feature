Feature: Verify different GET all operations using REST-assured
  Scenario: A scenario
    Given I get all users with GET operation for the "/users"
    When I perform GET all users
    Then I get "4" users as a result