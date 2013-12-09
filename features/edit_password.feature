Feature: Edit User

As a User
I want to change my password 
So that I can be more secure or feel more secure.

As a User 
I want to cancel my account 
So that I no longer be part of The Learning Shelter

Background:
  Given the following users exist:
    | email            | password              | id     | 
    | user@email.com   | password123           |1       |
  When I am logged in as "user@email.com"
  And I am on the dashboard page
  And I follow "Edit User"
  Then I should be on the edit users page

Scenario: Successful Password Change
  When I fill in the following:
  |Password      |newpassword |
  |Password confirmation|newpassword|
  |Current password| password123     |
  And I press "Update" 
  Then I should be on the dashboard page

Scenario: Failed Password Change
  When I fill in the following:
  |Password      |newpassword |
  |Password confirmation|newpassword|
  |Current password| notpassword     |
  And I press "Update" 
  Then I should be on the users page
  And I should see "Current password is invalid" 

Scenario: Successful Cancel Account
  And I press "Cancel my account"
  Then I should be on the home page
  And I should see "Bye! Your account was successfully cancelled. We hope to see you again soon." 

