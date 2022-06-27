Feature: Verify different GET all operations using REST-assured
  Scenario: Verify one author of the post
    Given I perform the GET operation for "/projects"
    And I perform GET for the project number "24"
    Then I should see the project title as "Mi proyecto 1.0"