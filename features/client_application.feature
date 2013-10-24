Feature: Client Application Form
  As a client
  I want to enter my application information in form fields
  So that I can be eligible for the program

Scenario: Client trying to apply for program
  Given I am logged in
  And I am on the login_page
  And I am a client
  When I go to the apply_page
  Then I should be on the client_apply_page
  And I should see about_you form 
  And I should see goals form

Scenario: Volunteer trying to apply for positions available(sad path)
  Given I am logged in
  And I am on the login_page
  And I am a volunteer
  When I go to the apply_page
  Then I should not be on client_apply_page

