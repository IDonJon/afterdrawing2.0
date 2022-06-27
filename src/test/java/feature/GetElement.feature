Feature: Verify different GET all operations using REST-assured
  Scenario: Verify one author of the post
    Given I perform GET method operation for "/elements"
    And I perform GET for the element number "4"
    Then I should see the element name as "Element 1"