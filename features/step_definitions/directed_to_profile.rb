
Given(/^I am on the login page$/) do
  @home = Home.new
  @home.load
  expect(@home).to be_displayed
  @home.button_section.log_in_button.click
  @login = Login.new
  expect(@login).to be_displayed
end

When(/^I enter my credentials$/) do
  @login.email.set 'foo@bar.com'
  @login.password.set 'foobar'
end

When(/^press the login button$/) do
  @login.log_in_button.click
end

Then(/^I am taken to my profile page$/) do
  @profile = Profile.new
  expect(@profile).to be_displayed
end
