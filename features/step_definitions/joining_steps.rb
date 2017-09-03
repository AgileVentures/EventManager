Given(/^an? (live )?event exists$/) do |live|
  Event.create(live: live == "live ")
end

Given(/^I visit the page for an? (live )?event$/) do |live|
  @event = Event.find_by(live: live == "live ")
  visit "/events/#{@event.id}"
end

When(/^the event goes (live|offline)$/) do |event_state|
  @event.live = event_state == "live"
  @event.save!
end
