Feature: Internal email system
  As a user with an account
  I want to receive emails
  So that I can recieve information outside of the web application.

Scenario: Receiving confirmation email for signup

  Given I am a new, authenticated user
  Then I should recieve an account confirmation email

Scenario: Receiving confirmation email for volunteer application.

  Given I have a successful volunteer application
  Then I should recieve an application confirmation email

Scenario: Receiving confirmation email for client application.

  Given I have a successful client application
  Then I should recieve an application confirmation email

Scenario: Admin send to mailing list

  Given I am an admin
  And I am viewing all the users
  And I press "Compose e-mail"
  Then Press "Send"
  And The users should recieve an email
