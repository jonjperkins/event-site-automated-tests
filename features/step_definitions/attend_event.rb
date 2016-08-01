
	@login = Login.new
	@login.load
	@login.log_in

Given(/^I navigate to the page of an event I didn't create while logged in$/) do
  @login = Login.new
	@login.load
	@login.log_in
  @event_index = EventIndex.new
  @event_index.load
  @event_index.test_event.click
  @test_page = TestPage.new
  @test_page.load
end

When(/^I choose to attend the event$/) do
  @test_page.attend_event_button.click
end

Then(/^I should see the button text change with instructions on how to unattend the event$/) do
  expect(@test_page).to have_selector("input[value='Leave event']")
  @test_page.leave_event_button.click
end