Feature: Email confirmation system
  As a user who just signed up
  I want to receive an email
  So that I can confirm my account.

Scenario: Receiving confirmation email for signup

  Given I am on the signup page
  And a clear email queue
  When I fill in the following:
  | Email             	    | example@example.com  |
  | Password 	    	        | successpwd   	       |
  | Password confirmation   | successpwd	         |
  When I press "Sign up"
  Then I should see "Signed in as example@example.com."
  And user should receive a confirmation email

