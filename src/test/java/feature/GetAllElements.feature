Feature: Verify different GET all operations using REST-assured
  Scenario: A scenario
    Given I get all elements with GET operation for the "/elements/1"
    When I perform GET all elements
    Then I get "4" elements as a result