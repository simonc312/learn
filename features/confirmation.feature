Feature: Email confirmation system
  As a user who just signed up
  I want to receive an email
  So that I can confirm my account.

Scenario: Receiving confirmation email for signup

  Given I am on the home page
  And a clear email queue
  When I fill in the following:
  | Email             	| example@example.com  |
  | Password 	    	        | successpwd   	     |
  | Password confirmation     | successpwd	     |

  When I press "Sign up"
  When I open the email
  Then I should have an email

