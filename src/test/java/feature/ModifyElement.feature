Feature: Verify different PUT operations using REST-assured

  Scenario: Verify update element
    Given I set PUT element service api for "/elements/4"
    And I perform PUT for the element number "4"
    Then I get a 200 status from modify element service