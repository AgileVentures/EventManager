Feature: See Event Heading
  As an EventManager developer
  So that I can test features in the ember frontend
  I'd like to see the words 'List of Events' on the event index page

  Scenario: see upcoming events heading
    Given I visit the ember home page
    Then I should the text "Event Manager"