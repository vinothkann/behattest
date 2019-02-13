# features/robotstxt.feature
#
@api
Feature: As a site builder, I would like to confirm robots.txt is configured properly.

  Scenario: Robots.txt should exists
    Given I am an anonymous user
    And I go to "robots.txt"
    Then the response status code should be 200
