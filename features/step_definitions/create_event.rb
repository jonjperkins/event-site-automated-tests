Given(/^I am logged in$/) do
  @login = Login.new
  @login.load
  @login.log_in
end

Given(/^I am on the event creation page$/) do
  @event_creation_page = EventCreation.new
  @event_creation_page.load
end

When(/^I create an event without specifying the time of the event$/) do
  @event_creation_page.create_event_without_time
end

Then(/^I am notified that I cannot create an event without specifying a time$/) do
  expect(@event_creation_page).to have_content("Event time can't be blank")
end



