@api @javascript
Feature: User Login.

  Scenario: Drupal default login screen should be disabled
    Given I am an anonymous user
    And I go to "user"
    Then I should be on "/"

  Scenario: Submit login form without fill the fields
    Given I am on "login"
    When I scroll "signIn" into view
    And I press "Log In"
    Then I should see "Email address is required."
    Then I should see "Password is required."

  Scenario: Invalid email id
    Given I am on "login"
    When I scroll "signIn" into view
    When I fill in "signInEmailAddress" with "xyz"
    And I press "Log In"
    Then I should see "Email address is not formatted correctly."
    Then I should see "Password is required."

  Scenario: Username & password wrong combination
    Given I am on "login"
    When I scroll "signIn" into view
    When I fill in "signInEmailAddress" with "sthakka5@its.jnj.com"
    When I fill in "currentPassword" with "xyz"
    And I press "Log In"
    And I wait for AJAX to finish
    And I wait for "10" seconds
    Then I should see "Incorrect username or password. Try again."

  Scenario: Login using correct username and password
    Given I am on "login"
    When I scroll "signIn" into view
    When I fill in "signInEmailAddress" with "sthakka5@its.jnj.com"
    When I fill in "currentPassword" with "Sanjay@28491"
    And I press "Log In"
    And I wait for AJAX to finish
    And I wait for "10" seconds
    And I go to "breast-cancer"
    Then I should see "Logout"
