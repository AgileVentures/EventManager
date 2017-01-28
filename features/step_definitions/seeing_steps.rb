Given(/^I visit the page for events$/) do
  visit "/events"
end

Given(/^following events exist:$/) do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  table.hashes.each do |hash|
    e = Event.create!(hash)
  end
end

Given(/^the date is "([^"]*)"$/) do |jump_date|
  @jump_date = jump_date
  Timecop.travel(Time.parse(@jump_date))
end

Given(/^I click on the "([^"]*)" button$/) do |arg1|
  click_button arg1
end