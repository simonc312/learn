Feature: Mass email sending system for admin
  As an admin
  I want to send out email
  So that I can keep everyone updated

Scenario: Sending mass email

  Given there are the following users:
  | email          | admin | password    |
  | admin@mail.com | true  | adminpasswd |
  | user@mail.com  | false | userpasswd  |

  And a clear email queue
  And I am on the homepage
  When I follow "sign in"
  When I fill in the following:
  | Email         | admin@mail.com  |
  | Password      | adminpasswd     |

  And I press "Sign in"
  And I am on the admin mailer page
  And I fill in the following:
  | Subject       | Test subject   |
  | Body          | Test body      |

  And I press "Send Mail"
  Then I should see flash_notice
