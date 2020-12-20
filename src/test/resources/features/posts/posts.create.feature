Feature: Create Post
  Background:
    * configure ssl = true
    Given url api.url
    And path paths.posts

  Scenario: Create new valid post
    Given request {userId: 1, title: "My new post", body: "My new post"}
    When method post
    Then status 201

  Scenario: Create post with missing user ID
    Given request {title: "My new post", body: "My new post"}
    When method post
    Then status 201
    And match response contains { id: #number }
    And match response == { id: #number, title: #string, body: #string }
    And match response == { id: 101, title: "My new post", body: "My new post" }

  Scenario: Create post with empty body
    Given request {}
    When method post
    Then status 201
    And match response == { id: #number }
    And match response == { id: 101 }