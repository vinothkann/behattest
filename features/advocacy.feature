@api @javascript
Feature: Advocacy Connector.
  In order to see the resources around entered zipcode:

  Scenario: Submit Advocacy form without fill the fields
    Given I am on "/treatment-journey-support/advocacy-connector"
    When I click on the element with css selector "#advocacy-submit"
    Then I should see "Cancer Type field is required."
    Then I should see "ZIP field is required."
    Then I should see "Select all the resources you are interested in: field is required."

  Scenario: Enter invalid zip code
    Given I am on "/treatment-journey-support/advocacy-connector"
    When  I fill in "submitted[ac_zip]" with "abcde"
    When I click on the element with css selector "#advocacy-submit"
    Then I should see "Cancer Type field is required."
    Then I should see "Enter a valid ZIP code"
    Then I should see "Select all the resources you are interested in: field is required."

  Scenario: Fill in valid details
    Given I am on "/treatment-journey-support/advocacy-connector"
    When I click on the element with xpath ".//*[@id='webform-uuid-1bd4775b-1ca5-4e0b-bfe7-59540e2404a2']/div/div[1]/div[1]/div/div[2]/b"
    When I click on the element with xpath ".//*[@id='webform-uuid-1bd4775b-1ca5-4e0b-bfe7-59540e2404a2']/div/div[1]/div[1]/div/div[3]/div/ul/li[14]"
    When I fill in "edit-submitted-ac-zip" with "66215"
    When I click on the element with xpath ".//*[@id='edit-submitted-ac-resource-interest-1']"
    When I click on the element with css selector "#advocacy-submit"
    And I wait for AJAX to finish
    Given I wait for "10" seconds
    Then I should see "Results"
    Then I should see "Local"
    Then I should see "National"
    When I click on the element with css selector ".adv-local"
    Then I should see a ".tab-pane-1.pane-first.active" element
    When I click on the element with css selector ".adv-national"
    Then I should see a ".tab-pane-2.pane-last.active" element
