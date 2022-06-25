# new feature
# Tags: optional

Feature: Verify different GET all operations using REST-assured
  Scenario: A scenario
    Given I get all projects with GET operation for the "/projects"
    When I perform GET all projects
    Then I get "4" projects as a result

