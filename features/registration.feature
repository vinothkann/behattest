@api @javascript
Feature: User Registration.

  Scenario: Drupal default registration screen should be disabled
    Given I am an anonymous user
    And I go to "user/register"
    Then I should be on "/"

  Scenario: Submit registration form without fill the fields
    Given I am on "customize"
    When I scroll "traditionalRegistration" into view
    Then I should see "Create Profile (Step 1 of 4)"
    When I scroll "collapseOne" into view
    And I press "Save and Continue"
    Then I should see "Field Required"
    Then I should see "Field Required"
    Then I should see "Email address is required."
    Then I should see "Password must be at least 8 characters."
    Then I should see "Password field is required"

  Scenario: Email id not valid
    Given I am on "customize"
    When I scroll "traditionalRegistration" into view
    Then I should see "Create Profile (Step 1 of 4)"
    When I scroll "collapseOne" into view
    When I fill in "capture_traditionalRegistration_firstName" with "First Name"
    When I fill in "capture_traditionalRegistration_lastName" with "Last Name"
    When I fill in "capture_traditionalRegistration_emailAddress" with "xyz"
    When I fill in "capture_traditionalRegistration_emailAddressConfirm" with "xyz"
    When I fill in "capture_traditionalRegistration_newPassword" with "Abc@xyz1"
    When I fill in "capture_traditionalRegistration_newPasswordConfirm" with "Abc@xyz1"
    And I press "Save and Continue"
    Then I should see "Email address is not formatted correctly."

  Scenario: Invalid combination of email id
    Given I am on "customize"
    When I scroll "traditionalRegistration" into view
    Then I should see "Create Profile (Step 1 of 4)"
    When I scroll "collapseOne" into view
    When I fill in "capture_traditionalRegistration_firstName" with "First Name"
    When I fill in "capture_traditionalRegistration_lastName" with "Last Name"
    When I fill in "capture_traditionalRegistration_emailAddress" with "abc@xyz.com"
    When I fill in "capture_traditionalRegistration_emailAddressConfirm" with "xyz@abc.com"
    When I fill in "capture_traditionalRegistration_newPassword" with "Abc@xyz1"
    When I fill in "capture_traditionalRegistration_newPasswordConfirm" with "Abc@xyz1"
    And I press "Save and Continue"
    Then I should see "Email addresses do not match."

  Scenario: Invalid combination of password & password policy
    Given I am on "customize"
    When I scroll "traditionalRegistration" into view
    Then I should see "Create Profile (Step 1 of 4)"
    When I scroll "collapseOne" into view
    When I fill in "capture_traditionalRegistration_firstName" with "First Name"
    When I fill in "capture_traditionalRegistration_lastName" with "Last Name"
    When I fill in "capture_traditionalRegistration_emailAddress" with "xyz@abc.com"
    When I fill in "capture_traditionalRegistration_emailAddressConfirm" with "xyz@abc.com"
    When I fill in "capture_traditionalRegistration_newPassword" with "abc"
    When I fill in "capture_traditionalRegistration_newPasswordConfirm" with "xyz"
    And I press "Save and Continue"
    Then I should see "Passwords do not match."
    Then I should see "Password must contain at least 8 characters, including 1 upper case letter, 1 number, and 1 symbol."

  Scenario: Complete the traditional registration
    Given I am on "customize"
    When I scroll "traditionalRegistration" into view
    Then I should see "Create Profile (Step 1 of 4)"
    When I scroll "collapseOne" into view
    When I fill in "capture_traditionalRegistration_firstName" with "First Name"
    When I fill in "capture_traditionalRegistration_lastName" with "Last Name"
    When I fill in "capture_traditionalRegistration_emailAddress" with "xyz25@abc.com"
    When I fill in "capture_traditionalRegistration_emailAddressConfirm" with "xyz25@abc.com"
    When I fill in "capture_traditionalRegistration_newPassword" with "Xyz@_!123"
    When I fill in "capture_traditionalRegistration_newPasswordConfirm" with "Xyz@_!123"
    Then I check "cancer-age-verify"
    Then I check "cancer-terms-conditions"
    And I press "Save and Continue"
    And I wait for AJAX to finish
    And I wait for "10" seconds
    Then the url should match "customize/continue"
    Then I should see "You can prioritize the cancer content you want to see"
    When I click on the element with xpath ".//*[@id='bootstrap-panel']/div/div/div[1]/div/div[2]/div/div[2]"
    When I click on the element with xpath ".//*[@id='bootstrap-panel']/div/div/div[1]/div/div[2]/div/div[3]/div/ul/li[4]"
    When I click on the element with xpath ".//*[@id='bootstrap-panel']/div/div/div[1]/div/div[3]/div/div[2]"
    When I click on the element with xpath ".//*[@id='bootstrap-panel']/div/div/div[1]/div/div[3]/div/div[3]/div/ul/li[3]"
    Then I check "edit-submitted-my-information-needs-cancertopics-1"
    Then I check "edit-submitted-my-information-needs-cancertopics-6"
    When I click on the element with xpath ".//*[@id='bootstrap-panel']/div/div/div[2]/div/a[1]"
    And I wait for AJAX to finish
    And I wait for "10" seconds
    Then I should see "To find resources in your area"
    When I scroll "bootstrap-panel--2" into view
    When I click on the element with xpath ".//*[@id='bootstrap-panel']/div/div/div[1]/div/div[1]/div/div[2]/b"
    When I click on the element with xpath ".//*[@id='bootstrap-panel']/div/div/div[1]/div/div[1]/div/div[3]/div/ul/li[2]"
    When I click on the element with xpath ".//*[@id='bootstrap-panel']/div/div/div[1]/div/div[2]/div/div[2]/b"
    When I click on the element with xpath ".//*[@id='bootstrap-panel']/div/div/div[1]/div/div[2]/div/div[3]/div/ul/li[3]"
    When I fill in "edit-submitted-about-me-zipcode" with "66215"
    When I click on the element with xpath ".//*[@id='bootstrap-panel']/div/div/div[2]/div/a[1]"
    And I wait for AJAX to finish
    And I wait for "10" seconds
    Then I should see "Would you like to receive additional Cancer.com materials by mail?"
    When I click on the element with xpath ".//*[@id='edit-submitted-mail-preferences-optin-by-mail-2']"
    When I click on the element with xpath ".//*[@id='bootstrap-panel']/div/div/div[2]/div/a[1]"
    Then  the url should match "customize/continue"
