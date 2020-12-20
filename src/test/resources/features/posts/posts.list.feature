Feature: Retrieve Posts
  Background:
    Given url api.url
    And path paths.posts
    * configure ssl = true

  Scenario: Retrieve list of posts
    When method get
    Then status 200