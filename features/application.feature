Feature: Application Form
  As a client
  I want to enter my application information in form fields
  So that I can be eligible for the program

Scenario: Successful client application

  Given I am a new, authenticated client candidate
  Given I am on the dashboard page
  Then I should see "Apply"
  When I follow "Apply"

  And I fill in the following:
    | First Name          | success@gmail.com  |
    | Last Name           | successpwd         |
    | Gender              | successpwd         |

  When I press "Apply"
  And I should be on the dashboard page
  Then I should see "A new Client Application has been submitted"

Scenario: Unsuccessful client application

  Given I am a new, authenticated client candidate
  Given I am on the dashboard page
  Then I should see "Apply"
  When I follow "Apply"

  And I fill in the following:
    | First Name          | success@gmail.com  |
    | Last Name           | successpwd         |
    | Gender              | successpwd         |

  When I press "Apply"
  And I should be on the dashboard page
  Then I should see "A new Client Application has been submitted"

  When I follow "Apply"
  And I fill in the following:
    | First Name          | success@gmail.com  |
    | Last Name           | successpwd         |
    | Gender              | successpwd         |

  When I press "Apply"
  And I should be on the dashboard page
  Then I should see "You have already submitted a Client Application"


  
Scenario: Successful volunteer application

  Given I am a new, authenticated volunteer candidate
  Given I am on the dashboard page
  Then I should see "Apply"
  When I follow "Apply"

  And I fill in the following:
    | First Name          | success@gmail.com  |
    | Last Name           | successpwd         |
    | Gender              | successpwd         |

  When I press "Apply"
  And I should be on the dashboard page
  Then I should see "A new Volunteer Application has been submitted"
  
Scenario: Unsuccessful volunteer application 

  Given I am a new, authenticated volunteer candidate
  Given I am on the dashboard page
  Then I should see "Apply"
  When I follow "Apply"

  And I fill in the following:
    | First Name          | success@gmail.com  |
    | Last Name           | successpwd         |
    | Gender              | successpwd         |

  When I press "Apply"
  And I should be on the dashboard page
  Then I should see "A new Volunteer Application has been submitted"

  When I follow "Apply"

  And I fill in the following:
    | First Name          | success@gmail.com  |
    | Last Name           | successpwd         |
    | Gender              | successpwd         |

  When I press "Apply"
  And I should be on the dashboard page
  Then I should see "You have already submitted a Volunteer Application"
