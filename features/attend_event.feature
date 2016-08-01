@attend_event

Feature: 
  As a user
  I want to be able to attend events
  So that I can hang out with all my friends

Scenario:
  Given I navigate to the page of an event I didn't create while logged in
  When I choose to attend the event
  Then I should see the button text change with instructions on how to unattend the event