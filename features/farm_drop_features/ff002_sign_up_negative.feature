@farm_drop
@negative
Feature: sign up negative tests

  Background:

    Given I navigate to sign up page

  @ff002_tc01
  Scenario: user is not able to register with an existing email

    Given Default user signs up
    And user logs out
    And Default user signs up
    And I should see "" error message


  @ff002_tc02
  Scenario Outline: user is not able to register with an wrong password/postcode

    Given <type> user signs up
    Then I should see "<error_message>" error message

    Examples:
      | type           | error_message |
      | Wrong password | blabla        |
      | Wrong postcode | blqblq        |
      | Wrong email    | blqblq        |









