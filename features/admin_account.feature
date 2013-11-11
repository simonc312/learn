Feature: About us
  As an administrator of the Learning Shelter
  I want to view all the users and the applications
  So that I can see who signed up and applied

Background:
Given there are the following users:
  | email          | admin | password    |
  | admin@mail.com | true  | adminpasswd |
  | user@mail.com  | false | userpasswd  |

Scenario: Successful admin log-in
  Given I am on the homepage
  When I follow "sign in"
  When I fill in the following:
  | Email         | admin@mail.com  |
  | Password      | adminpasswd     |

  And I press "Sign in"
  Then I should be on the dashboard page
  When I visit the admin page

  Then I should see "Users"
  Then I should see "Clients"
  Then I should see "Volunteers"

Scenario: Unsuccessful admin log-in
  Given I am on the homepage
  When I follow "sign in"
  When I fill in the following:
  | Email         | user@mail.com  |
  | Password      | userpasswd     |

  And I press "Sign in"
  Then I should be on the dashboard page
  When I visit the admin page

  Then I should see "You do not have the authorization to access this page"
  Then I should not see "Users"
  Then I should not see "Clients"
  Then I should not see "Volunteers"

