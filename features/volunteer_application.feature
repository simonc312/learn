Feature: Volunteer Application Form
  As a Volunteer
  I want to enter my application information in form fields
  So that I can be eligible for a Volunteer position

Scenario: Volunteer trying to apply for an open position in the program
  Given I am logged in
  And I am on the login_page
  And I am a volunteer
  When I go to the apply_page
  Then I should be on the volunteer_apply_page
  And I should see upload_resume button
  And I should see about_you form

Scenario: Client trying to apply for positions available(sad path) 
  Given I am logged in
  And I am on the login_page
  And I am a client
  When I go to the apply_page
  Then I should not be on the volunteer_apply_page
