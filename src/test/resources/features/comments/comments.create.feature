Feature: Create Comment
  Background:
    * configure ssl = true
    Given url api.url
    And path paths.comments

  Scenario: Create new valid comment
    Given request { name: "John Doe", email: "john.doe@inet.com", body: "My new comment" }
    When method post
    Then status 201
    And match response contains { id: #number }
    And match response == { id: #number, name: #string, email: #string, body: #string }
    And match response == { id: 501, name: "John Doe", email: "john.doe@inet.com", body: "My new comment" }

  Scenario: Create comment with empty body
    Given request {}
    When method post
    Then status 201
    And match response == { id: #number }
    And match response == { id: 501 }