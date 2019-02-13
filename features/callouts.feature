@javascript
Feature: Callouts feature

  Scenario: Template 2 cancer type hompage for anonoymous User
    Given I am on "/"
    And I click "Breast"
    Then I should be on "/breast-cancer"
    And I wait for "15" seconds
    And I wait for AJAX to finish
    Then I should see "Customize Cancer.com"
    Then I should see "Local Advocacy Groups"
    Then I should see "Survivorship Guide"

  Scenario: Template 2 cancer type hompage for anonoymous User for Other Cancer Type
    Given I am on "/"
    When I click on the element with xpath ".//*[@id='bs-grid-edit-body-und-0-value-4']/div[2]/div[3]/div/p/a"
    Then I should be on "/cancer-information"
    And I wait for "15" seconds
    Then I should see "Choose a Cancer Type"
    Then I should see "Customize Cancer.com"
    Then I should see "Local Advocacy Groups"

  Scenario: Template 2 cancer type hompage for partially registered user
    Given I am on "/login"
    And I wait for "15" seconds
    When I fill in "signInEmailAddress" with "chandru225+37@gmail.com"
    When I fill in "currentPassword" with "Connect@01"
    And I press "Log In"
    And I wait for AJAX to finish
    Then I go to "/breast-cancer"
    And I wait for "15" seconds
    Then I should see "You're Almost Done"
    Then I should see "Local Advocacy Groups"
    Then I should see "Survivorship Guide"
    Then I go to "/user/logout"

  Scenario: Template 2 cancer type hompage for fully registered user
    Given I am on "/login"
    And I wait for "15" seconds
    When I fill in "signInEmailAddress" with "chandru225+20@gmail.com"
    When I fill in "currentPassword" with "Connect@01"
    And I press "Log In"
    And I wait for AJAX to finish
    Then I go to "/breast-cancer"
    And I wait for "15" seconds
    Then I should see "My Care Activator"
    Then I should see "Local Advocacy Groups"
    Then I should see "Survivorship Guide"
    Then I go to "/user/logout"

Scenario: Template 3 Journey Step hompage for anonoymous User
    Given I am on "/"
    And I click "Breast"
    Then I should be on "/breast-cancer"
    And I click "Recently Diagnosed"
    And I wait for "15" seconds
    Then I go to "/breast-cancer/cancer-diagnosis"
    And I wait for "15" seconds
    Then I should see "Customize Cancer.com"
    Then I should see "Local Advocacy Groups"
    Then I should see "Survivorship Guide"

  Scenario: Template 3 Journey Step hompage for anonoymous User for Other Cancer Type
    Given I am on "/"
    When I click on the element with xpath ".//*[@id='bs-grid-edit-body-und-0-value-4']/div[2]/div[3]/div/p/a"
    Then I should be on "/cancer-information"
    And I click "Recently Diagnosed"
    And I wait for "15" seconds
    Then I should see "Choose a Cancer Type"
    Then I should see "Customize Cancer.com"
    Then I should see "Local Advocacy Groups"

  Scenario: Template 3 Journey Step hompage for partially registered user
    Given I am on "/login"
    And I wait for "15" seconds
    When  I fill in "signInEmailAddress" with "chandru225+37@gmail.com"
    When  I fill in "currentPassword" with "Connect@01"
    And I press "Log In"
    And I wait for AJAX to finish
    And I wait for "15" seconds
    And I click "Recently Diagnosed"
    And I wait for "15" seconds
    Then I should see "You're Almost Done"
    Then I should see "Local Advocacy Groups"
    Then I should see "Survivorship Guide"
    Then I go to "/user/logout"

  Scenario: Template 3 Journey Step hompage for fully registered user
    Given I am on "/login"
    And I wait for "15" seconds
    When  I fill in "signInEmailAddress" with "chandru225+20@gmail.com"
    When  I fill in "currentPassword" with "Connect@01"
    And I press "Log In"
    And I wait for AJAX to finish
    And I wait for "15" seconds
    And I click "Recently Diagnosed"
    And I wait for "15" seconds
    Then I should see "My Care Activator"
    Then I should see "Local Advocacy Groups"
    Then I should see "Survivorship Guide"
    Then I go to "/user/logout"

  Scenario: Template 4 Interest Type page for anonoymous User
    Given I am on "/"
    And I click "Breast"
    Then I should be on "/breast-cancer"
    And I click "Recently Diagnosed"
    Then I go to "/breast-cancer/cancer-diagnosis/what-is-breast-cancer"
    And I wait for "15" seconds
    Then I should see "Customize Cancer.com"
    Then I should see "Local Advocacy Groups"
    Then I should see "Survivorship Guide"

  Scenario: Template 4 Interest Type page for anonoymous User for Other Cancer Type
    Given I am on "/"
    When I click on the element with xpath ".//*[@id='bs-grid-edit-body-und-0-value-4']/div[2]/div[3]/div/p/a"
    Then I should be on "/cancer-information"
    And I click "Recently Diagnosed"
    Then I go to "/cancer-information/cancer-diagnosis/choosing-your-healthcare-team"
    And I wait for "15" seconds
    Then I should see "Choose a Cancer Type"
    Then I should see "Customize Cancer.com"
    Then I should see "Local Advocacy Groups"

  Scenario: Template 4 Interest Type page for partially registered user
    Given I am on "/login"
    And I wait for "15" seconds
    When  I fill in "signInEmailAddress" with "chandru225+38@gmail.com"
    When  I fill in "currentPassword" with "Connect@01"
    And I press "Log In"
    And I wait for AJAX to finish
    And I wait for "15" seconds
    Then I go to "/breast-cancer/"
    And I click "Recently Diagnosed"
    Then I go to "/breast-cancer/cancer-diagnosis/what-is-breast-cancer"
    And I wait for "15" seconds
    Then I should see "You're Almost Done"
    Then I should see "Local Advocacy Groups"
    Then I should see "Survivorship Guide"
    Then I go to "/user/logout"

  Scenario: Template 4 Interest Type page for fully registered user
    Given I am on "/login"
    And I wait for "15" seconds
    When  I fill in "signInEmailAddress" with "chandru225+20@gmail.com"
    When  I fill in "currentPassword" with "Connect@01"
    And I press "Log In"
    And I wait for AJAX to finish
    And I wait for "15" seconds
    And I click "Recently Diagnosed"
    Then I go to "/breast-cancer/cancer-diagnosis/what-is-breast-cancer"
    And I wait for "15" seconds
    Then I should see "My Care Activator"
    Then I should see "Local Advocacy Groups"
    Then I should see "Survivorship Guide"
    Then I go to "/user/logout"

  Scenario: Template 5 Newcred Article page for anonoymous User
    Given I am on "/"
    And I click "Breast"
    Then I should be on "/breast-cancer"
    And I click "Recently Diagnosed"
    Then I go to "/breast-cancer/cancer-diagnosis/what-is-breast-cancer"
    And I click "Read more"
    Then I should see "Customize Cancer.com"

  Scenario: Template 5 Newcred Article page for anonoymous User for Other Cancer Type
    Given I am on "/"
    When I click on the element with xpath ".//*[@id='bs-grid-edit-body-und-0-value-4']/div[2]/div[3]/div/p/a"
    Then I should be on "/cancer-information"
    And I click "Recently Diagnosed"
    Then I go to "/cancer-information/cancer-diagnosis/choosing-your-healthcare-team"
    And I click "Read more"
    Then I should see "Choose a Cancer Type"

  Scenario: Template 5 Newcred Article page for partially registered user
    Given I am on "/login"
    And I wait for "15" seconds
    When  I fill in "signInEmailAddress" with "chandru225+37@gmail.com"
    When  I fill in "currentPassword" with "Connect@01"
    And I press "Log In"
    And I wait for AJAX to finish
    And I wait for "15" seconds
    And I click "Recently Diagnosed"
    Then I go to "/breast-cancer/cancer-diagnosis/what-is-breast-cancer"
    And I click "Read more"
    Then I should see "You're Almost Done"
    Then I go to "/user/logout"

  Scenario: Template 5 Newcred Article page for fully registered user
    Given I am on "/login"
    And I wait for "15" seconds
    When  I fill in "signInEmailAddress" with "chandru225+20@gmail.com"
    When  I fill in "currentPassword" with "Connect@01"
    And I press "Log In"
    And I wait for AJAX to finish
    And I wait for "15" seconds
    And I click "Recently Diagnosed"
    Then I go to "/breast-cancer/cancer-diagnosis/what-is-breast-cancer"
    And I click "Read more"
    Then I should see "My Care Activator"
    Then I go to "/user/logout"

  Scenario: Template 6 Treatment Journey Support page for anonoymous User
    Given I am on "/"
    And I click "Breast"
    Then I should be on "/breast-cancer"
    And I click "Treatment Journey Support"
    Then I should see "Customize Cancer.com"

  Scenario: Template 6 Treatment Journey Support page for anonoymous User for Other Cancer Type
    Given I am on "/"
    When I click on the element with xpath ".//*[@id='bs-grid-edit-body-und-0-value-4']/div[2]/div[3]/div/p/a"
    Then I should be on "/cancer-information"
    And I click "Treatment Journey Support"
    And I wait for "15" seconds
    Then I should see "Choose a Cancer Type"

  Scenario: Template 6 Treatment Journey Support page for partially registered user
    Given I am on "/login"
    And I wait for "15" seconds
    When  I fill in "signInEmailAddress" with "chandru225+38@gmail.com"
    When  I fill in "currentPassword" with "Connect@01"
    And I press "Log In"
    And I wait for AJAX to finish
    And I click "Treatment Journey Support"
    And I wait for "15" seconds
    Then I should see "You're Almost Done"
    Then I go to "/user/logout"

  Scenario: Template 6 Treatment Journey Support page for fully registered user
    Given I am on "/login"
    And I wait for "15" seconds
    When  I fill in "signInEmailAddress" with "chandru225+20@gmail.com"
    When  I fill in "currentPassword" with "Connect@01"
    And I press "Log In"
    And I wait for AJAX to finish
    And I click "Treatment Journey Support"
    And I wait for "15" seconds
    Then I should see "My Care Activator"
    Then I go to "/user/logout"

  Scenario: Template 7 My Care Activator page for anonoymous User
    Given I am on "/"
    And I click "Breast"
    Then I should be on "/breast-cancer"
    And I click "Treatment Journey Support"
    Then I go to "/treatment-journey-support/my-care-activator"
    And I wait for "15" seconds
    Then I should see "Customize Cancer.com"

  Scenario: Template 7 My Care Activator page for anonoymous User for Other Cancer Type
    Given I am on "/"
    When I click on the element with xpath ".//*[@id='bs-grid-edit-body-und-0-value-4']/div[2]/div[3]/div/p/a"
    Then I should be on "/cancer-information"
    And I click "Treatment Journey Support"
    Then I go to "/treatment-journey-support/my-care-activator"
    And I wait for "15" seconds
    Then I should see "Choose a Cancer Type"

  Scenario: Template 7 My Care Activator page for partially registered user
    Given I am on "/login"
    And I wait for "15" seconds
    When  I fill in "signInEmailAddress" with "chandru225+37@gmail.com"
    When  I fill in "currentPassword" with "Connect@01"
    And I press "Log In"
    And I wait for AJAX to finish
    And I wait for "15" seconds
    And I click "Treatment Journey Support"
    Then I go to "/treatment-journey-support/my-care-activator"
    And I wait for "15" seconds
    Then I should see "You're Almost Done"
    Then I go to "/user/logout"

  Scenario: Template 7 My Care Activator page for fully registered user
    Given I am on "/login"
    And I wait for "15" seconds
    When  I fill in "signInEmailAddress" with "chandru225+20@gmail.com"
    When  I fill in "currentPassword" with "Connect@01"
    And I press "Log In"
    And I wait for AJAX to finish
    And I wait for "15" seconds
    And I click "Treatment Journey Support"
    Then I go to "/treatment-journey-support/my-care-activator"
    And I wait for "15" seconds
    Then I should see "My Care Activator"
    Then I go to "/user/logout"

  Scenario: Template 8 Advocacy Connector page for anonoymous User
    Given I am on "/"
    And I click "Breast"
    Then I should be on "/breast-cancer"
    And I click "Treatment Journey Support"
    Then I go to "/treatment-journey-support/advocacy-connector"
    And I wait for "15" seconds
    Then I should see "Customize Cancer.com"

  Scenario: Template 8 Advocacy Connector page for anonoymous User for Other Cancer Type
    Given I am on "/"
    When I click on the element with xpath ".//*[@id='bs-grid-edit-body-und-0-value-4']/div[2]/div[3]/div/p/a"
    Then I should be on "/cancer-information"
    And I click "Treatment Journey Support"
    Then I go to "/treatment-journey-support/advocacy-connector"
    And I wait for "15" seconds
    Then I should see "Choose a Cancer Type"

  Scenario: Template 8 Advocacy Connector page for partially registered user
    Given I am on "/login"
    And I wait for "15" seconds
    When  I fill in "signInEmailAddress" with "chandru225+38@gmail.com"
    When  I fill in "currentPassword" with "Connect@01"
    And I press "Log In"
    And I wait for AJAX to finish
    And I wait for "15" seconds
    And I click "Treatment Journey Support"
    Then I go to "/treatment-journey-support/advocacy-connector"
    And I wait for "15" seconds
    Then I should see "You're Almost Done"
    Then I go to "/user/logout"

  Scenario: Template 8 Advocacy Connector page for fully registered user
    Given I am on "/login"
    And I wait for "15" seconds
    When  I fill in "signInEmailAddress" with "chandru225+20@gmail.com"
    When  I fill in "currentPassword" with "Connect@01"
    And I press "Log In"
    And I wait for AJAX to finish
    And I wait for "15" seconds
    And I click "Treatment Journey Support"
    Then I go to "/treatment-journey-support/advocacy-connector"
    And I wait for "15" seconds
    Then I should see "My Care Activator"
    Then I go to "/user/logout"
