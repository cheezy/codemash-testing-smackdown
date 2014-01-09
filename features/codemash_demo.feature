Feature: CodeMash Automation Smackdown

  Scenario: Login example
    Given I am on the demo site
    When I login
    Then I should see the heading "Demonstration Application"

  Scenario: Ajax example
    Given I am on The Internet site
    When I invoke the second dynamic loading example
    Then I should see the "Hello World!" prompt

  Scenario: Rich UI Example
    Given I am on The Internet site
    When I select the Back To menu option
    Then I should be on the JQueryUI page
