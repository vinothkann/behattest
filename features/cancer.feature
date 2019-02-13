@api
Feature: Cancer General

  Scenario Outline: Main Menu Items
    Given I am on "/<url>"
    And   I should see the text "<title>"

    Examples:
      | url                                                                                        | title                                                              |
      | home                                                                                       | Cancer Information for Your Personal Needs                         |
      | breast-cancer                                                                              | Breast Cancer: Cancer.com - A Cancer Resource for Patients         |
      | breast-cancer/cancer-diagnosis                                                             | Recently Diagnosed with Breast Cancer                              |
      | breast-cancer/cancer-diagnosis/what-is-breast-cancer                                       | Understanding Your Breast Cancer Diagnosis                         |
      | breast-cancer/cancer-diagnosis/choosing-your-healthcare-team                               | Choosing Your Breast Cancer Healthcare Team                        |
      | breast-cancer/cancer-diagnosis/coping-with-cancer                                          | Coping With Breast Cancer                                          |
      | breast-cancer/cancer-diagnosis/taking-the-next-step-toward-cancer-treatment                | Taking the Next Step Toward Breast Cancer Treatment                |
      | breast-cancer/cancer-treatment                                                             | Breast Cancer Treatment Decisions                                  |
      | breast-cancer/cancer-treatment/cancer-treatment-options-making-a-decision                  | Breast Cancer Treatment: Making a Decision                         |
      | breast-cancer/cancer-treatment/cancer-insurance-financial-assistance                       | Breast Cancer Insurance & Financial Assistance                     |
      | breast-cancer/cancer-treatment/talking-to-your-cancer-healthcare-team                      | Engaging Your Breast Cancer Healthcare Team                        |
      | breast-cancer/cancer-treatment/cancer-treatment-what-to-expect                             | Breast Cancer Treatment: What to Expect                            |
      | breast-cancer/cancer-treatment/when-treatment-isnt-an-option                               | When Breast Cancer Treatment Isn't an Option                       |
      | breast-cancer/cancer-treatment/cancer-clinical-trials                                      | Breast Cancer Recurrence Clinical Trials                           |
      | breast-cancer/during-cancer-treatment                                                      | During Breast Cancer Treatment                                     |
      | breast-cancer/during-cancer-treatment/living-with-cancer                                   | Living With Breast Cancer                                          |
      | breast-cancer/during-cancer-treatment/cancer-support-caregiving                            | Caregiving for Breast Cancer Patients                              |
      | breast-cancer/during-cancer-treatment/side-effects-of-cancer                               | Side Effects of Breast Cancer Treatment                            |
      | breast-cancer/during-cancer-treatment/working-with-your-cancer-healthcare-team             | Working With Your Breast Cancer Healthcare Team                    |
      | breast-cancer/during-cancer-treatment/cancer-support                                       | Breast Cancer Support                                              |
      | breast-cancer/cancer-remission                                                             | Breast Cancer Remission                                            |
      | breast-cancer/cancer-remission/staying-healthy                                             | Staying Healthy With Breast Cancer                                 |
      | breast-cancer/cancer-remission/surviving-cancer-follow-up-cancer-care                      | Breast Cancer: Follow-Up Care                                      |
      | breast-cancer/cancer-remission/long-term-effects-of-treatment                              | Side Effects of Breast Cancer Treatment                            |
      | breast-cancer/cancer-remission/life-after-cancer                                           | Life After Breast Cancer                                           |
      | breast-cancer/cancer-recurrence                                                            | Facing Breast Cancer Recurrence                                    |
      | breast-cancer/cancer-recurrence/recurrence-cancer                                          | If Breast Cancer Returns                                           |
      | breast-cancer/cancer-recurrence/treatment-options                                          | Recurring Breast Cancer Treatment Options                          |
      | breast-cancer/cancer-recurrence/reengaging-your-cancer-healthcare-team                     | Re-engaging Your Breast Cancer Healthcare Team                     |
      | breast-cancer/cancer-recurrence/considering-clinical-trials                                | Considering Breast Cancer Clinical Trials                          |
      | breast-cancer/cancer-recurrence/end-of-life-care                                           | Breast Cancer: End-of-Life Care                                    |
      | lung-cancer                                                                                | Lung Cancer: Cancer.com - A Cancer Resource for Patients           |
      | lung-cancer/cancer-diagnosis                                                               | Recently Diagnosed with Lung Cancer                                |
      | lung-cancer/cancer-diagnosis/what-is-lung-cancer                                           | Understanding Your Lung Cancer Diagnosis                           |
      | lung-cancer/cancer-diagnosis/choosing-your-healthcare-team                                 | Choosing Your Lung Cancer Healthcare Team                          |
      | lung-cancer/cancer-diagnosis/coping-with-cancer                                            | Coping With Lung Cancer                                            |
      | lung-cancer/cancer-diagnosis/taking-the-next-step-toward-cancer-treatment                  | Taking the Next Step Toward Lung Cancer Treatment                  |
      | lung-cancer/cancer-treatment                                                               | Lung Cancer Treatment Decisions                                    |
      | lung-cancer/cancer-treatment/cancer-treatment-options-making-a-decision                    | Lung Cancer Treatment: Making a Decision                           |
      | lung-cancer/cancer-treatment/cancer-insurance-financial-assistance                         | Lung Cancer Insurance & Financial Assistance                       |
      | lung-cancer/cancer-treatment/talking-to-your-cancer-healthcare-team                        | Engaging Your Lung Cancer Healthcare Team                          |
      | lung-cancer/cancer-treatment/cancer-treatment-what-to-expect                               | Lung Cancer Treatment: What to Expect                              |
      | lung-cancer/cancer-treatment/when-treatment-isnt-an-option                                 | When Lung Cancer Treatment Isn't an Option                         |
      | lung-cancer/cancer-treatment/cancer-clinical-trials                                        | Lung Cancer Recurrence Clinical Trials                             |
      | lung-cancer/during-cancer-treatment                                                        | During Lung Cancer Treatment                                       |
      | lung-cancer/during-cancer-treatment/living-with-cancer                                     | Living With Lung Cancer                                            |
      | lung-cancer/during-cancer-treatment/cancer-support-caregiving                              | Caregiving for Lung Cancer Patients                                |
      | lung-cancer/during-cancer-treatment/side-effects-of-cancer                                 | Side Effects of Lung Cancer Treatment                              |
      | lung-cancer/during-cancer-treatment/working-with-your-cancer-healthcare-team               | Working With Your Lung Cancer Healthcare Team                      |
      | lung-cancer/during-cancer-treatment/cancer-support                                         | Lung Cancer Support                                                |
      | lung-cancer/cancer-remission                                                               | Lung Cancer Remission                                              |
      | lung-cancer/cancer-remission/staying-healthy                                               | Staying Healthy With Lung Cancer                                   |
      | lung-cancer/cancer-remission/surviving-cancer-follow-up-cancer-care                        | Lung Cancer: Follow-Up Care                                        |
      | lung-cancer/cancer-remission/long-term-effects-of-treatment                                | Side Effects of Lung Cancer Treatment                              |
      | lung-cancer/cancer-remission/life-after-cancer                                             | Life After Lung Cancer                                             |
      | lung-cancer/cancer-recurrence                                                              | Facing Lung Cancer Recurrence                                      |
      | lung-cancer/cancer-recurrence/recurrence-cancer                                            | If Lung Cancer Returns                                             |
      | lung-cancer/cancer-recurrence/treatment-options                                            | Recurring Lung Cancer Treatment Options                            |
      | lung-cancer/cancer-recurrence/reengaging-your-cancer-healthcare-team                       | Re-engaging Your Lung Cancer Healthcare Team                       |
      | lung-cancer/cancer-recurrence/considering-clinical-trials                                  | Considering Lung Cancer Clinical Trials                            |
      | lung-cancer/cancer-recurrence/end-of-life-care                                             | Lung Cancer: End-of-Life Care                                      |
      | multiple-myeloma                                                                           | Multiple Myeloma: Cancer.com - A Cancer Resource for Patients      |
      | multiple-myeloma/cancer-diagnosis                                                          | Recently Diagnosed with Multiple Myeloma                           |
      | multiple-myeloma/cancer-diagnosis/what-is-multiple-myeloma                                 | Understanding Your Multiple Myeloma Diagnosis                      |
      | multiple-myeloma/cancer-diagnosis/choosing-your-healthcare-team                            | Choosing Your Multiple Myeloma Healthcare Team                     |
      | multiple-myeloma/cancer-diagnosis/coping-with-cancer                                       | Coping With Multiple Myeloma                                       |
      | multiple-myeloma/cancer-diagnosis/taking-the-next-step-toward-cancer-treatment             | Taking the Next Step Toward Multiple Myeloma Treatment             |
      | multiple-myeloma/cancer-treatment                                                          | Multiple Myeloma Treatment Decisions                               |
      | multiple-myeloma/cancer-treatment/cancer-treatment-options-making-a-decision               | Multiple Myeloma Treatment: Making a Decision                      |
      | multiple-myeloma/cancer-treatment/cancer-insurance-financial-assistance                    | Multiple Myeloma Insurance & Financial Assistance                  |
      | multiple-myeloma/cancer-treatment/talking-to-your-cancer-healthcare-team                   | Engaging Your Multiple Myeloma Healthcare Team                     |
      | multiple-myeloma/cancer-treatment/cancer-treatment-what-to-expect                          | Multiple Myeloma Treatment: What to Expect                         |
      | multiple-myeloma/cancer-treatment/when-treatment-isnt-an-option                            | When Multiple Myeloma Treatment Isn't an Option                    |
      | multiple-myeloma/cancer-treatment/cancer-clinical-trials                                   | Multiple Myeloma Recurrence Clinical Trials                        |
      | multiple-myeloma/during-cancer-treatment                                                   | During Multiple Myeloma Treatment                                  |
      | multiple-myeloma/during-cancer-treatment/living-with-cancer                                | Living With Multiple Myeloma                                       |
      | multiple-myeloma/during-cancer-treatment/cancer-support-caregiving                         | Caregiving for Multiple Myeloma Patients                           |
      | multiple-myeloma/during-cancer-treatment/side-effects-of-cancer                            | Side Effects of Multiple Myeloma Treatment                         |
      | multiple-myeloma/during-cancer-treatment/working-with-your-cancer-healthcare-team          | Working With Your Multiple Myeloma Healthcare Team                 |
      | multiple-myeloma/during-cancer-treatment/cancer-support                                    | Multiple Myeloma Support                                           |
      | multiple-myeloma/cancer-remission                                                          | Multiple Myeloma Remission                                         |
      | multiple-myeloma/cancer-remission/staying-healthy                                          | Staying Healthy With Multiple Myeloma                              |
      | multiple-myeloma/cancer-remission/surviving-cancer-follow-up-cancer-care                   | Multiple Myeloma: Follow-Up Care                                   |
      | multiple-myeloma/cancer-remission/long-term-effects-of-treatment                           | Side Effects of Multiple Myeloma Treatment                         |
      | multiple-myeloma/cancer-remission/life-after-cancer                                        | Life After Multiple Myeloma                                        |
      | multiple-myeloma/cancer-recurrence                                                         | Facing Multiple Myeloma Recurrence                                 |
      | multiple-myeloma/cancer-recurrence/recurrence-cancer                                       | If Multiple Myeloma Returns                                        |
      | multiple-myeloma/cancer-recurrence/treatment-options                                       | Recurring Multiple Myeloma Treatment Options                       |
      | multiple-myeloma/cancer-recurrence/reengaging-your-cancer-healthcare-team                  | Re-engaging Your Multiple Myeloma Healthcare Team                  |
      | multiple-myeloma/cancer-recurrence/considering-clinical-trials                             | Considering Multiple Myeloma Clinical Trials                       |
      | multiple-myeloma/cancer-recurrence/end-of-life-care                                        | Multiple Myeloma: End-of-Life Care                                 |
      | non-hodgkins-lymphoma                                                                      | Non-Hodgkins Lymphoma: Cancer.com - A Cancer Resource for Patients |
      | non-hodgkins-lymphoma/cancer-diagnosis                                                     | Recently Diagnosed with Non-Hodgkins Lymphoma                      |
      | non-hodgkins-lymphoma/cancer-diagnosis/what-is-non-hodgkins-lymphoma                       | Understanding Your Non-Hodgkins Lymphoma Diagnosis                 |
      | non-hodgkins-lymphoma/cancer-diagnosis/choosing-your-healthcare-team                       | Choosing Your Non-Hodgkins Lymphoma Healthcare Team                |
      | non-hodgkins-lymphoma/cancer-diagnosis/coping-with-cancer                                  | Coping With Non-Hodgkins Lymphoma                                  |
      | non-hodgkins-lymphoma/cancer-diagnosis/taking-the-next-step-toward-cancer-treatment        | Taking the Next Step Toward Non-Hodgkins Lymphoma Treatment        |
      | non-hodgkins-lymphoma/cancer-treatment                                                     | Non-Hodgkins Lymphoma Treatment Decisions                          |
      | non-hodgkins-lymphoma/cancer-treatment/cancer-treatment-options-making-a-decision          | Non-Hodgkins Lymphoma Treatment: Making a Decision                 |
      | non-hodgkins-lymphoma/cancer-treatment/cancer-insurance-financial-assistance               | Non-Hodgkins Lymphoma Insurance & Financial Assistance             |
      | non-hodgkins-lymphoma/cancer-treatment/talking-to-your-cancer-healthcare-team              | Engaging Your Non-Hodgkins Lymphoma Healthcare Team                |
      | non-hodgkins-lymphoma/cancer-treatment/cancer-treatment-what-to-expect                     | Non-Hodgkins Lymphoma Treatment: What to Expect                    |
      | non-hodgkins-lymphoma/cancer-treatment/when-treatment-isnt-an-option                       | When Non-Hodgkins Lymphoma Treatment Isn't an Option               |
      | non-hodgkins-lymphoma/cancer-treatment/cancer-clinical-trials                              | Non-Hodgkins Lymphoma Recurrence Clinical Trials                   |
      | non-hodgkins-lymphoma/during-cancer-treatment                                              | During Non-Hodgkins Lymphoma Treatment                             |
      | non-hodgkins-lymphoma/during-cancer-treatment/living-with-cancer                           | Living With Non-Hodgkins Lymphoma                                  |
      | non-hodgkins-lymphoma/during-cancer-treatment/cancer-support-caregiving                    | Caregiving for Non-Hodgkins Lymphoma Patients                      |
      | non-hodgkins-lymphoma/during-cancer-treatment/side-effects-of-cancer                       | Side Effects of Non-Hodgkins Lymphoma Treatment                    |
      | non-hodgkins-lymphoma/during-cancer-treatment/working-with-your-cancer-healthcare-team     | Working With Your Non-Hodgkins Lymphoma Healthcare Team            |
      | non-hodgkins-lymphoma/during-cancer-treatment/cancer-support                               | Non-Hodgkins Lymphoma Support                                      |
      | non-hodgkins-lymphoma/cancer-remission                                                     | Non-Hodgkins Lymphoma Remission                                    |
      | non-hodgkins-lymphoma/cancer-remission/staying-healthy                                     | Staying Healthy With Non-Hodgkins Lymphoma                         |
      | non-hodgkins-lymphoma/cancer-remission/surviving-cancer-follow-up-cancer-care              | Non-Hodgkins Lymphoma: Follow-Up Care                              |
      | non-hodgkins-lymphoma/cancer-remission/long-term-effects-of-treatment                      | Side Effects of Non-Hodgkins Lymphoma Treatment                    |
      | non-hodgkins-lymphoma/cancer-remission/life-after-cancer                                   | Life After Non-Hodgkins Lymphoma                                   |
      | non-hodgkins-lymphoma/cancer-recurrence                                                    | Facing Non-Hodgkins Lymphoma Recurrence                            |
      | non-hodgkins-lymphoma/cancer-recurrence/recurrence-cancer                                  | If Non-Hodgkins Lymphoma Returns                                   |
      | non-hodgkins-lymphoma/cancer-recurrence/treatment-options                                  | Recurring Non-Hodgkins Lymphoma Treatment Options                  |
      | non-hodgkins-lymphoma/cancer-recurrence/reengaging-your-cancer-healthcare-team             | Re-engaging Your Non-Hodgkins Lymphoma Healthcare Team             |
      | non-hodgkins-lymphoma/cancer-recurrence/considering-clinical-trials                        | Considering Non-Hodgkins Lymphoma Clinical Trials                  |
      | non-hodgkins-lymphoma/cancer-recurrence/end-of-life-care                                   | Non-Hodgkins Lymphoma: End-of-Life Care                            |
      | prostate-cancer                                                                            | Prostate Cancer: Cancer.com - A Cancer Resource for Patients       |
      | prostate-cancer/cancer-diagnosis                                                           | Recently Diagnosed with Prostate Cancer                            |
      | prostate-cancer/cancer-diagnosis/what-is-prostate-cancer                                   | Understanding Your Prostate Cancer Diagnosis                       |
      | prostate-cancer/cancer-diagnosis/choosing-your-healthcare-team                             | Choosing Your Prostate Cancer Healthcare Team                      |
      | prostate-cancer/cancer-diagnosis/coping-with-cancer                                        | Coping With Prostate Cancer                                        |
      | prostate-cancer/cancer-diagnosis/taking-the-next-step-toward-cancer-treatment              | Taking the Next Step Toward Prostate Cancer Treatment              |
      | prostate-cancer/cancer-treatment                                                           | Prostate Cancer Treatment Decisions                                |
      | prostate-cancer/cancer-treatment/cancer-treatment-options-making-a-decision                | Prostate Cancer Treatment: Making a Decision                       |
      | prostate-cancer/cancer-treatment/cancer-insurance-financial-assistance                     | Prostate Cancer Insurance & Financial Assistance                   |
      | prostate-cancer/cancer-treatment/talking-to-your-cancer-healthcare-team                    | Engaging Your Prostate Cancer Healthcare Team                      |
      | prostate-cancer/cancer-treatment/cancer-treatment-what-to-expect                           | Prostate Cancer Treatment: What to Expect                          |
      | prostate-cancer/cancer-treatment/when-treatment-isnt-an-option                             | When Prostate Cancer Treatment Isn't an Option                     |
      | prostate-cancer/cancer-treatment/cancer-clinical-trials                                    | Prostate Cancer Recurrence Clinical Trials                         |
      | prostate-cancer/during-cancer-treatment                                                    | During Prostate Cancer Treatment                                   |
      | prostate-cancer/during-cancer-treatment/living-with-cancer                                 | Living With Prostate Cancer                                        |
      | prostate-cancer/during-cancer-treatment/cancer-support-caregiving                          | Caregiving for Prostate Cancer Patients                            |
      | prostate-cancer/during-cancer-treatment/side-effects-of-cancer                             | Side Effects of Prostate Cancer Treatment                          |
      | prostate-cancer/during-cancer-treatment/working-with-your-cancer-healthcare-team           | Working With Your Prostate Cancer Healthcare Team                  |
      | prostate-cancer/during-cancer-treatment/cancer-support                                     | Prostate Cancer Support                                            |
      | prostate-cancer/cancer-remission                                                           | Prostate Cancer Remission                                          |
      | prostate-cancer/cancer-remission/staying-healthy                                           | Staying Healthy With Prostate Cancer                               |
      | prostate-cancer/cancer-remission/surviving-cancer-follow-up-cancer-care                    | Prostate Cancer: Follow-Up Care                                    |
      | prostate-cancer/cancer-remission/long-term-effects-of-treatment                            | Side Effects of Prostate Cancer Treatment                          |
      | prostate-cancer/cancer-remission/life-after-cancer                                         | Life After Prostate Cancer                                         |
      | prostate-cancer/cancer-recurrence                                                          | Facing Prostate Cancer Recurrence                                  |
      | prostate-cancer/cancer-recurrence/recurrence-cancer                                        | If Prostate Cancer Returns                                         |
      | prostate-cancer/cancer-recurrence/treatment-options                                        | Recurring Prostate Cancer Treatment Options                        |
      | prostate-cancer/cancer-recurrence/reengaging-your-cancer-healthcare-team                   | Re-engaging Your Prostate Cancer Healthcare Team                   |
      | prostate-cancer/cancer-recurrence/considering-clinical-trials                              | Considering Prostate Cancer Clinical Trials                        |
      | prostate-cancer/cancer-recurrence/end-of-life-care                                         | Prostate Cancer: End-of-Life Care                                  |
      | cancer-information                                                                         | Cancer Information                                                 |
      | cancer-information/cancer-diagnosis                                                        | Cancer Diagnosis: I Have Cancer                                    |
      | cancer-information/cancer-diagnosis/what-is-cancer                                         | What’s Cancer?                                                     |
      | cancer-information/cancer-diagnosis/choosing-your-healthcare-team                          | Choosing Your Cancer Healthcare Team                               |
      | cancer-information/cancer-diagnosis/coping-with-cancer                                     | Coping With Cancer                                                 |
      | cancer-information/cancer-diagnosis/taking-the-next-step-toward-cancer-treatment           | Taking the Next Step Toward Cancer Treatment                       |
      | cancer-information/cancer-treatment-information                                            | Cancer Treatment Information                                       |
      | cancer-information/cancer-treatment-information/cancer-treatment-options-making-a-decision | Cancer Treatment Options: Making a Decision                        |
      | cancer-information/cancer-treatment-information/cancer-insurance-financial-assistance      | Insurance and Financial Assistance                                 |
      | cancer-information/cancer-treatment-information/talking-to-your-cancer-healthcare-team     | Talking to Your Cancer Healthcare Team                             |
      | cancer-information/cancer-treatment-information/cancer-treatment-what-to-expect            | Cancer Treatment: What to Expect                                   |
      | cancer-information/cancer-treatment-information/when-treatment-isnt-an-option              | When Cancer Treatment Isn’t an Option                              |
      | cancer-information/cancer-treatment-information/cancer-clinical-trials                     | Considering Cancer Clinical Trials                                 |
      | cancer-information/during-cancer-treatment                                                 | During Cancer Treatment                                            |
      | cancer-information/during-cancer-treatment/living-with-cancer                              | Living With Cancer                                                 |
      | cancer-information/during-cancer-treatment/cancer-support-caregiving                       | Cancer Support & Caregiving                                        |
      | cancer-information/during-cancer-treatment/side-effects-of-cancer                          | Side Effects of Cancer Treatments                                  |
      | cancer-information/during-cancer-treatment/working-with-your-cancer-healthcare-team        | Working With Your Cancer Healthcare Team                           |
      | cancer-information/during-cancer-treatment/cancer-support                                  | Cancer Support                                                     |
      | cancer-information/cancer-remission                                                        | Cancer Remission                                                   |
      | cancer-information/cancer-remission/staying-healthy                                        | Staying Healthy                                                    |
      | cancer-information/cancer-remission/surviving-cancer-follow-up-cancer-care                 | Surviving Cancer: Follow-up Cancer Care                            |
      | cancer-information/cancer-remission/long-term-effects-of-treatment                         | Long-term Side Effects of Cancer Treatment                         |
      | cancer-information/cancer-remission/life-after-cancer                                      | Life After Cancer                                                  |
      | cancer-information/cancer-recurrence                                                       | Cancer Recurrence: When Cancer Comes Back                          |
      | cancer-information/cancer-recurrence/recurrent-cancer                                      | What to Do if You Have Recurrent Cancer                            |
      | cancer-information/cancer-recurrence/treatment-options                                     | Recurrent Cancer Treatment Options                                 |
      | cancer-information/cancer-recurrence/reengaging-your-cancer-healthcare-team                | Re-engaging Your Cancer Healthcare Team                            |
      | cancer-information/cancer-recurrence/considering-clinical-trials                           | Recurrent Cancer Clinical Trials                                   |
      | cancer-information/cancer-recurrence/end-of-life-care                                      | End-of-Life Care                                                   |
      | about                                                                                      | About Cancer.com                                                   |
      | news-archive                                                                               | Cancer News Archive                                                |
      | treatment-journey-support                                                                  | Cancer Treatment Journey Support                                   |
      | treatment-journey-support/my-care-activator                                                | My Care Activator                                                  |
      | treatment-journey-support/advocacy-connector                                               | Advocacy Connector                                                 |
      | treatment-journey-support/survivorship-guide                                               | Survivorship Guide                                                 |
      | contact-us                                                                                 | Contact Us                                                         |
      | legal-notice                                                                               | Legal Notice                                                       |
      | privacy-policy                                                                             | Privacy Policy                                                     |
      | site-map                                                                                   | Sitemap Cancer.com                                                 |
