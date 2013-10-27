Feature: Client Application Form
  As a client
  I want to enter my application information in form fields
  So that I can be eligible for the program

Scenario: Successful application

  Given I am a new, authenticated user
  Given I am on the dashboard page
  Then I should see "Apply as a client"
  When I follow "Apply as Client"

  And I fill in the following:
    | First Name          | success@gmail.com  |
    | Last Name           | successpwd         |
    | Gender              | successpwd         |

  When I press "Apply"
  And I should be on the dashboard page
  Then I should see "A new Client Application has been submitted"
  

