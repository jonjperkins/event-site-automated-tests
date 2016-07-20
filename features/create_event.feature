@create_event

Feature:
  As a user
  I want to be certain I can't accidentally create an event without specifiying the time
  So that there won't be confusion surrounding when my event starts

Scenario:
  Given I am logged in
    And I am on the event creation page
  When I create an event without specifying the time of the event
  Then I am notified that I cannot create an event without specifying a time