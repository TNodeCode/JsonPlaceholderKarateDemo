Feature: Retrieve Comments
  Background:
    Given url api.url
    And path paths.comments
    * configure ssl = true

  Scenario: Retrieve list of posts
    When method get
    Then status 200