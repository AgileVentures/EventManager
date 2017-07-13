Given(/^I visit the ember home page$/) do
  visit "/"
end

Then(/^I should the text "([^"]*)"$/) do |arg1|
  expect(page.body).to have_content(/#{arg1}/m)
end