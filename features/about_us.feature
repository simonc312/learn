Feature: About us
  As an interested person
  I want to read about the Learning Shelter Organization before signing up
  So I can gauge my interest for the oragnization

Scenario: Just visiting the website
  Given I am not logged in
  When I am on the about_us page
  Then I should see general_information

Scenario: Logged on and visiting the website
  Given I am logged in
  When I am on the about_us page
  Then I should see general_information
