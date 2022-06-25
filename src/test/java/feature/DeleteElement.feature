Feature: Verify different Delete operations using REST-assured
  Scenario: Delete a Element
    Given I set DELETE element service api for "/elements/4"
    When I perform DELETE operation for the element number "4"
    Then  I get a 200 status from delete element service