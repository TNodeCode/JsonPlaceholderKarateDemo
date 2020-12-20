Feature: Retrieve Users
  Background:
    * configure ssl = true
    Given url api.url
    And path paths.users

  Scenario: Retrieve list of users
    When method get
    Then status 200