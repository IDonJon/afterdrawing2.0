Feature: Verify different PUT operations using REST-assured

  Scenario: Verify update element
    Given I set PUT interface service api for "/interfaces/4"
    And I perform PUT for the interface number "4"
    Then I get a 200 status from modify interface service