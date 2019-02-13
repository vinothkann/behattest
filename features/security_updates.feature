# features/security_updates.feature
#

@api
Feature: As a site builder, I would like to confirm Drupal core and contributed modules have no security updates.

  Scenario: Drupal core and contributed modules have no security updates.
    Given I run drush 'pm-updatestatus --security-only --fields="name,status_msg"'
    Then drush output should not contain "SECURITY UPDATE available"
