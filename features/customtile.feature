@api @javascript
Feature: Custom tiles on cancer homepages based on interest selection while user registration.

  Scenario: Go to the edit profile
    And I go to "login"
    When I scroll "signIn" into view
    Then I should see "Log in to Cancer.com"
    When I fill in "signInEmailAddress" with "sthakka5@its.jnj.com"
    When I fill in "currentPassword" with "Sanjay@28491"
    And I press "Log In"
    And I wait for AJAX to finish
    And I wait for "10" seconds
    And I go to "preferences"
    When I click on the element with css selector "#bootstrap-panel--2"
    Then I check "edit-submitted-my-information-needs-cancertopics-1"
    When I click on the element with css selector ".profile"
    And I go to "breast-cancer"
    Then I should see "Coping With Cancer"
