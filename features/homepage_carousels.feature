@api @javascript
Feature: Homepage Carousels.

  Scenario: Carousels are getting displayed in the homepage by clicking on right arrows
    Given I am an anonymous user
    And I go to "/"
    Then I should see "Recent Cancer Diagnosis"
    When I click on the element with css selector ".owl-next i"
    And I wait for "2" seconds
    Then I should see "Cancer Treatment Decisions"
    When I click on the element with css selector ".owl-next i"
    And I wait for "2" seconds
    Then I should see "During Cancer Treatment"
    When I click on the element with css selector ".owl-next i"
    And I wait for "2" seconds
    Then I should see "Cancer Remission"
    When I click on the element with css selector ".owl-next i"
    And I wait for "2" seconds
    Then I should see "Facing Cancer Recurrence"
