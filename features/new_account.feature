Feature: User Accounts

As an interested Person
I want to sign up and enter my purpose
So that I can get involved with the program


Scenario: Trying to sign up for the program as a Volunteer 
  Given I am on the sign_up_page
  Given I choose: volunteer
  Given I fill in all the forms
  When I click submit
  Then I should be on login_page
  And I should see a confirm_message

Scenario: Trying to sign up as a Client
  Given I am on the sign_up_page
  Given I choose: client
  Given I fill in all the forms
  When I click submit
  Then I should be on login_page
  And I should see a confirm_message

Scenario: Trying to sign up as a Donor
  Given I am on the sign_up_page
  Given I choose: donor
  Given I fill in all the forms
  When I click submit
  Then I should be on login_page
  And I should see a confirm_message


Scenario: Trying to sign up as a Staff
  Given I am on the sign_up_page
  Given I choose: staff
  Given I fill in all the forms
  When I click submit
  Then I should be on login_page
  And I should see a confirm_message

Scenario: Invalid Password
  Given the password is invalid
  When I click submit
  Then I should be on the sign_up_page
  And I should see the invalid-password-message
  And I should see the password form marked invalid

Scenario: Invalid Email
  Given the email is invalid
  When I click submit
  Then I should be on the sign_up_page
  Then I should see the invalid-email-message
  And I should see the email form marked invalid






