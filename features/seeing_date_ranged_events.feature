Feature: Date Range Events
  As an AV member
  So that I can see previous and next session of the week
  I'd like to see a list of archived and upcoming sessions by using a date filter

  Background:
    Given following events exist:
      | name       | date                    | duration | live  |
      | Standup1   | 2014/02/03 07:00:00 UTC | 150      | false |
      | Standup2   | 2014/02/07 10:00:00 UTC | 60       | true  |
      | Standup3   | 2014/02/09 07:00:00 UTC | 150      | false |
    Given the date is "2014/02/01 10:15:00 UTC"

  Scenario: see upcoming events
    Given I visit the page for events
    And I fill in "start" with "2014-02-07, 12:00 00"
    And I click on the "Send input" button
    Then I should see 1 rows with text "Standup3" in a table
    And I should not see "Standup1"
    And I should not see "Standup2"