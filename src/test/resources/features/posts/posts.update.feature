Feature: Update Post
  Background:
    * configure ssl = true
    Given url api.url
    And path paths.posts + "/100"

  Scenario: Update valid post
    Given request {id: 1, userId: 1, title: "My new post", body: "My new post"}
    When method put
    Then status 200
    And match response == { id: #number, userId: #number, title: #string, body: #string }
    And match response == { id: 100, userId: 1, title: "My new post", body: "My new post" }

  Scenario: Create post with missing user ID
    Given request {title: "My new post", body: "My new post"}
    When method put
    Then status 200
    And match response contains { id: #number }
    And match response == { id: #number, title: #string, body: #string }
    And match response == { id: 100, title: "My new post", body: "My new post" }

  Scenario: Create post with empty body
    Given request {}
    When method put
    Then status 200
    And match response == { id: #number }
    And match response == { id: 100 }