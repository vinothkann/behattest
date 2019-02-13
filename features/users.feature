# features/users.feature
#
@api
Feature: As a site builder, I would like to confirm account registration and profiles are disabled.

  Scenario: Account registration should be disabled
    Given I am an anonymous user
    And I go to "user/register"
    Then I should be on "/"

  Scenario: Anonymouse users should not be able to view user profile
    Given I am an anonymous user
    And I go to "user/1"
    Then the response status code should be 403
