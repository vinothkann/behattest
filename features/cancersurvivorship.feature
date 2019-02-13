@api @javascript
Feature: Cancer Survivorship

  Scenario: Testing the cancer survivor ship form lung cancer.
    Given I am on "/treatment-journey-support/survivorship-guide"
    When I scroll "bs-grid-edit-body-und-0-value-7" into view
    When  I fill in "submitted[sg_cancertype]" with "Adenocarcinoma of the Lung"
    When I click on the element with xpath ".//*[@id='webform-uuid-3dd03588-271e-4041-89f1-8ecf1defddd5']/div/div[1]/div[3]/div/div[2]/b"
    When I click on the element with xpath ".//*[@id='webform-uuid-3dd03588-271e-4041-89f1-8ecf1defddd5']/div/div[1]/div[3]/div/div[3]/div/ul/li[2]"
    When I click on the element with xpath ".//*[@id='webform-uuid-3dd03588-271e-4041-89f1-8ecf1defddd5']/div/div[1]/div[2]/div/div[2]/b"
    When I click on the element with xpath ".//*[@id='webform-uuid-3dd03588-271e-4041-89f1-8ecf1defddd5']/div/div[1]/div[2]/div/div[3]/div/ul/li[3]"
    When  I fill in "submitted[sg_firstname]" with "John"
    When  I fill in "submitted[sg_lastname]" with "vik"
    When I click on the element with xpath ".//*[@id='webform-uuid-3dd03588-271e-4041-89f1-8ecf1defddd5']/div/div[3]/div[1]/div/div[1]/div/div[3]/div/ul/li[5]"
    When I click on the element with xpath ".//*[@id='webform-uuid-3dd03588-271e-4041-89f1-8ecf1defddd5']/div/div[3]/div[1]/div/div[2]/div/div[3]/div/ul/li[21]"
    When I click on the element with xpath ".//*[@id='webform-uuid-3dd03588-271e-4041-89f1-8ecf1defddd5']/div/div[3]/div[1]/div/div[3]/div/div[3]/div/ul/li[2]"
    When  I fill in "submitted[sg_email_address]" with "test@123.com"
    When  I fill in "submitted[sg_address1]" with "los angeles"
    When  I fill in "submitted[sg_address2]" with "New york"
    When  I fill in "submitted[sg_city]" with "SA"
    When I click on the element with xpath ".//*[@id='webform-uuid-3dd03588-271e-4041-89f1-8ecf1defddd5']/div/div[6]/div[2]/div/div[3]/div/ul/li[2]"
    When I fill in "submitted[sg_zip]" with "32021"
    When I click on the element with xpath ".//*[@id='webform-uuid-3dd03588-271e-4041-89f1-8ecf1defddd5']/div/div[7]/div[1]/div/div[3]/div/ul/li[3]"
    When I fill in "submitted[sg_phone]" with "94245877865"
    And I click on the element with css selector "#survivorship-submit"
    And I wait for "10" seconds
    Then the url should match "/treatment-journey-support/survivorship-guide"
    Then I should see "Your Patient Resource Survivorship Guide confirmation number is:"

  Scenario: Testing the cancer survivor ship form prostate cancer.
    Given I am on "/treatment-journey-support/survivorship-guide"
    When  I fill in "submitted[sg_cancertype]" with "Prostate Cancer"
    When  I select "E2A3BC5B-79A6-4483-AFB6-D1D6CCFA107E" from "submitted[sg_stage]"
    When  I select "69D6E4D0-E134-489D-B2DC-9741416C0866" from "submitted[sg_treatment]"
    When  I fill in "submitted[sg_firstname]" with "Sam"
    When  I fill in "submitted[sg_lastname]" with "Roy"
    When  I select "2" from "submitted[sg_dob][month]"
    When  I select "2" from "submitted[sg_dob][day]"
    When  I select "1997" from "submitted[sg_dob][year]"
    When  I fill in "submitted[sg_email_address]" with "test@12.com"
    When  I fill in "submitted[sg_address1]" with "los angeles"
    When  I fill in "submitted[sg_address2]" with "New york"
    When  I fill in "submitted[sg_city]" with "SA"
    When  I select "AK" from "submitted[sg_state]"
    When  I fill in "submitted[sg_zip]" with "32076"
    When  I select "Female" from "submitted[sg_gender]"
    When  I fill in "submitted[sg_phone]" with "9424587789"
    And   I click on the element with css selector "#survivorship-submit"
    And I wait for "5" seconds
    Then  the url should match "/treatment-journey-support/survivorship-guide"
    Then  I should see "Your Patient Resource Survivorship Guide confirmation number is:"

