Feature:

As an Admin
I want to create events that everyone sees
So that everyone can stay up to date

As an Admin 
I want to create events with different colors
So that I can differeniate importance of events

Background:
  Given the following users exist:
    | email             | password             | admin      | id     | 
    | admin@blahh.com   | password123          | true       |1       |
    | user2@blahh.com   | password123          | false      |2       |
    | user3@blahh.com   | password123          | false      |3       |

  Given the following events exist:
    | name         | user_id |
    | admin event  | 1       |
    | user2 event  | 2       |
    | user3 event  | 3       |

Scenario: Admin creates, edits, and deletes event
  And I am logged in as "admin@blahh.com"
  And I am on the admin calendar page
  And I press "Add New Event"
  And I fill New Event Form for "the admin event" 
  And I press "Save Event"
  Then I should be on the admin calendar page
  And I should see "the admin event"
  When I follow "the admin event"
  When I follow "Edit"
  And I fill in "new admin event" for "Event Name"
  And I press "Save Changes"
  Then I should see "new admin event"
  When I press "Delete"
  Then I should be on the admin calendar page
  And I should see "'new admin event' deleted"
  And I log out


Scenario: User sees admin event
  When I am logged in as "user2@blahh.com"
  When I am on the dashboard calendar page
  And I should see "admin event"
  And I log out

Scenario: Admin sees all user events
  And I am logged in as "admin@blahh.com"
  When I am on the admin calendar page
  Then I should see "admin event"
  Then I should see "user2 event"
  Then I should see "user3 event"
  And I log out

Scenario: User does not see other users' events
  When I am logged in as "user2@blahh.com"
  When I am on the dashboard calendar page
  And I should not see "user3 event"
  And I log out




