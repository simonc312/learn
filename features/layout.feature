Feature: Layout 
	As a general visitor of the Learning Shelter
	So that I can easily navigate the home page
	I want to be impressed by the layout of the pages.

Scenario: Bad URL
	Given I am on the home page
	When I visit a non-existent url
	Then I should see "The page you were looking for doesn't exist."

Scenario: Login fields visible on the home page
	Given I am on the home page
	Given I am not authenticated
	Then I should see "Email"
	And I should see "Password"
	And I should see "sign in"

Scenario: About Us tab
	Given I am on the home page
	When I follow "About Us"
	Then I should see "About The Learning Shelter"
	And I should not see "Not Found"

Scenario: Donate tab
	Given I am on the home page
	When I follow "Donate"
	Then I should see "Info about donating to The Learning Shelter"
	And I should not see "Not Found"

Scenario: Events tab
	Given I am on the home page
	When I follow "Events"
	Then I should see "Upcoming Events"
	Then I should see "Calendar"
	And I should not see "Not Found"

