Given(/^an event exists$/) do
  @event = Event.create
end

Given(/^I visit the page for an event$/) do
  visit "/events/#{@event.id}"
end

When(/^the event goes live$/) do
  @event.live = true
  @event.save!
end