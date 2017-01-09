Given(/^an event exists$/) do
  @event = Event.create
end

Given(/^I visit the page for an event$/) do
  visit "/events/#{@event.id}"
end

Then(/^I should see "([^"]*)"$/) do |text|
  expect(page).to have_content text
end

When(/^the event goes live$/) do
  @event.live = true
  @event.save
end