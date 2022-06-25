Feature: Verify different POST operations using REST-assured

  Scenario: Create a element
    Given I set POST element service api for "/users/1/projects/1/interfaces/1/elements"
    When I perform POST elements
    Then I get a 200 status from element service