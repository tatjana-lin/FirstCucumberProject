Feature: Home Page

  @navigate
  Scenario: Verify Home page title is displayed
    Given User launches Chrome browser
    When User opens ilcarro Home Page
    Then User verifies Home page title is displayed
    And User quits browser