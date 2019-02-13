@api
Feature: Progressive User Registration.

  Scenario: Submit registration form without fill the fields
    Given I am on "/breast-cancer"
    Given I am on "/lung-cancer"
    Given I am on "/multiple-myeloma"
    Given I am on "/non-hodgkins-lymphoma"
    Given I am on "/prostate-cancer"
    Then I should see "Help Us Deliver What's Right for you"
    Then I should see "Save your preferences to unlock more features"
    And I press "Save and Continue"
    Then I should see "Field Required"
    Then I should see "Field Required"
    Then I should see "Email address is required."
    Then I should see "Password must be at least 8 characters."
    Then I should see "Password field is required"
