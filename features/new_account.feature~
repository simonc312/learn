Feature: User Accounts

As an interested Person
I want to sign up and enter my purpose
So that I can get involved with the program

Background: On the sign up page
  Given I am on the signup page

Scenario: Successful sign up
  And I follow "Sign Up"
  When I fill in the following:
    | Email          				| success@gmail.com  |
    | Password      			  | successpwd   			 |
    | Password confirmation | successpwd				 |

  When I press "Sign up"
  Then I should be on the dashboard page
	And I should see "Signed in as success@gmail.com"
	And I should see "Apply as a client"
	And I should see "Apply as a volunteers"
	


Scenario: Password length too short
  When I fill in the following:
    | Email          				| short@gmail.com  |
    | Password      			  | short     			 |
    | Password confirmation | short  					 |

  When I press "Sign up"
  Then I should be on the users page
	And I should see "Password is too short (minimum is 8 characters)"

Scenario: Password does not match
  When I fill in the following:
    | Email          				| failure@gmail.com  |
    | Password      			  | failurepwd   			 |
    | Password confirmation | notmatchpwd				 |

  When I press "Sign up"
  Then I should be on the users page
	And I should see "Password doesn't match confirmation"



Scenario: Email is already taken
  Given I am on the signup page
	And there is the user with email "success@gmail.com" in the database 

  When I fill in the following:
    | Email          				| success@gmail.com  |
    | Password      			  | successpwd   			 |
    | Password confirmation | successpwd				 |

  When I press "Sign up"
  Then I should be on the users page
	Then I should see "Email has already been taken"
	And there is only one user with the email "success@gmail.com" in the database


Scenario: Try to navigate to home page after creating account
  Given I am on the signup page
  When I fill in the following:
    | Email          				| success@gmail.com  |
    | Password      			  | successpwd   			 |
    | Password confirmation | successpwd				 |

  When I press "Sign up"
  Then I should be on the dashboard page
  When I go to the home page
  Then I should be on the dashboard page

Scenario: Successful signin
  Given there is the user with email "blah1@gmail.com" in the database
  When I am on the signin page
  When I fill in the following:
    | Email          				| blah1@gmail.com  |
    | Password      			  | password123 		 |
  And I press "Sign in"
  Then I should be on the dashboard page
  




