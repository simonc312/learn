Feature:

As an Admin 
I want to be able to add events to an event calender,
So I make sure Clients and Volunteers see important upcoming events and regular meeting times.

As a User 
I want to be able to click on events on my event calender 
So I can see all the information neccessary: description, place, etc.

As a User 
I want to be able to add events to my event calender
So I can make personal events others may not need.

Background:

Given the following events exist:
|Title            |Date        |Duration      |Description    |Place             |
|Orientation      | 12/12/12   | 12:00 - 01:00|Meet and Greet |SF Chinatown      |
|Lunch            | 12/31/12   | 11:00 - 12:00|Have fun       |Fisherman's Wharf |

Scenario: Admin adds event

Given I am logged in as admin
And I am on the dashboard page
When I click "New Event" button
When I fill in fields 
When I submit "Save"
I should see new event on calender at right place and time
When I log out and sign in as "User"
When I am on the dashboard page 
Then I should see new event on calender 

Scenario: User clicks event

Given I am logged in as User
And I am on the dashboard page
When I follow "Event Title" link on Calender
Then I should see a sidebar or pop up window with Event info
Then I should see "Event Title" description 

Scenario: User adds event

Given I am logged in as User
And I am on the dashboard page 
When I click "New Event" button
When I fill in fields 
When I submit "Save"
I should see new event on calender at right place and time
When I log out and sign in as "Admin"
When I am on the dashboard page 
Then I should not see new event on calender 