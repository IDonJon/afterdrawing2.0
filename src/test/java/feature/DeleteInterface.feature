Feature: Verify different Delete operations using REST-assured
  Scenario: Delete an Interface
    Given I set DELETE interface service api for "/interfaces/4"
    When I perform DELETE operation for the interface number "4"
    Then  I get a 200 status from delete interface service