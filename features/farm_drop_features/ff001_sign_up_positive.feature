@farm_drop
@positive
Feature: sign up positive tests

  Background:

    Given I navigate to sign up page

  @ff001_tc01
  Scenario: Default user is able to register himself

    Given Default user signs up
    When I should be on "Discover" page