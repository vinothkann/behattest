@api
Feature: Drupal test behat

  Scenario Outline: Main Menu Items
    Given I am on "/<url>"
    And   I should see the text "<title>"

    Examples:
      | url                  | title                        |
      | home                 | Home123                      |
 