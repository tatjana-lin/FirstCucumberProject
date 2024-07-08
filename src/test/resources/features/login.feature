Feature: Login

  @validData
  Scenario: Login with valid data
    Given User launches Chrome browser
    When User opens ilcarro Home Page
    And User clicks on Log in link
    And User enters valid data
    And User clicks on Yalla button
    Then User verifies Success Message is displayed
    And User quits browser

  @invalidPassword
  Scenario Outline: Login with valid email and invalid password
    Given User launches Chrome browser
    When User opens ilcarro Home Page
    And User clicks on Log in link
    And User enters valid email and invalid password
      | email   | password   |
      | <email> | <password> |
    And User clicks on Yalla button
    Then User verifies Error Message is displayed
    And User quits browser
    Examples:
      | email | password |
    |  alice@email.com     |  validPass1234        |
    |  alice@email.com     |  validpass123$        |
    |  alice@email.com     |  VALIDPASS123$        |
    |  alice@email.com     |  validPasssss$        |