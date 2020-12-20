Feature: Delete Post

  Background:
    * configure ssl = true
    Given url api.url
    And path paths.posts + "/100"

    Scenario: Delete existing post
      Given method delete
      Then status 200