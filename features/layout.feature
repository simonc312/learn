Feature: Layout 
	As a general visitor of the Learning Shelter
	So that I can easily navigate the home page
	I want to be impressed by the layout of the pages.

Scenario: Bad URL
	Given I am on the home page
	When I visit a nonexistent URL
	Then I should see "Not Found"

Scenario: Login fields visible on the home page
	Given I am on the home page
	And I am not signed in
	Then I should see Email
	And I should see Password
	And I should see the "Sign In" button

Scenario: About Us tab
	Given I am on the home page
	When I click on the "About Us" tab
	Then I should see "About The Learning Shelter"
	And I should not see "Not Found"

Scenario: Donate tab
	Given I am on the home page
	When I click on the "Donate" tab
	Then I should see "Info about donating to The Learning Shelter"
	And I should not see "Not Found"

Scenario: Events tab
	Given I am on the home page
	When I click on the "Events" tab
	Then I should see "Upcoming Events"
	Then I should see "Calendar"
	And I should not see "Not Found"

