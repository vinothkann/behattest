# features/redirects.feature
#

@api
Feature: As a site builder, I would like to confirm global redirects are configured properly.

  Scenario: Global Redirect module is enabled.
    Given I run drush "pm-info globalredirect --fields=status"
    Then drush output should contain "enabled"
