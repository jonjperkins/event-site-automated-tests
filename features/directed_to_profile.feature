Feature: Users who log in are taken to their profile page
  As a user
  I want the first page I see when I log in to be my profile page
  So I can easily keep track of the events I'm interested in

Scenario:
  Given I am on the login page
  When I enter my credentials
    And press the login button
  Then I am taken to my profile page
  