Feature: User Accounts

As an interested Person
I want to sign up and enter my purpose
So that I can get involved with the program


Scenario: Successful sign up
  Given I am on the home page

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
  Given I am on the home page

  When I fill in the following:
    | Email          				| short@gmail.com  |
    | Password      			  | short     			 |
    | Password confirmation | short  					 |

  When I press "Sign up"
  Then I should be on the users page
	And I should see "Password is too short (minimum is 8 characters)"

Scenario: Password does not match
  Given I am on the home page

  When I fill in the following:
    | Email          				| failure@gmail.com  |
    | Password      			  | failurepwd   			 |
    | Password confirmation | notmatchpwd				 |

  When I press "Sign up"
  Then I should be on the users page
	And I should see "Password doesn't match confirmation"



Scenario: Email is already taken
  Given I am on the home page
	And there is the user with email "success@gmail.com" in the database 

  When I fill in the following:
    | Email          				| success@gmail.com  |
    | Password      			  | successpwd   			 |
    | Password confirmation | successpwd				 |

  When I press "Sign up"
  Then I should be on the users page
	Then I should see "Email has already been taken"
	And there is only one user with the email "success@gmail.com" in the database







