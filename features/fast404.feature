# features/fast404.feature
#
@api
Feature: As a site builder, I would like to confirm fast404 is configured properly.

  Scenario: 404_fast_paths_exclude variable should be set.
    Given I run drush vget 404_fast_paths_exclude
    Then drush output should contain "404_fast_paths_exclude"

  Scenario: 404_fast_paths variable should be set.
    Given I run drush vget 404_fast_paths
    Then drush output should contain "404_fast_paths"

  Scenario: 404_fast_html variable should be set.
    Given I run drush vget 404_fast_html
    Then drush output should contain "404_fast_html"
