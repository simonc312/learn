Feature: Email confirmation system
  As a user who just signed up
  I want to receive an email
  So that I can confirm my account with the application.

Scenario: Receiving confirmation email for signup

  Given I am a new user
  Then I should recieve an account confirmation email

Scenario: Trying to log in without being confirmed

  Given I am a new user
  And I am not confirmed
  And I visit sign_in page
  And I enter my email and password
  And I click Sign In
  Then I should see 'You are not confirmed, check your email to confirm your account.'

Scenario: Receiving confirmation email for client application.

  Given I am a new user
  And I am confirmed
  And I visit sign_in page
  And I enter my email and password
  And I click Sign In
  Then I should be authenticated
