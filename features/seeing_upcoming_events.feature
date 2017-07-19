Feature: Upcoming Event View
  As an AV member
  So that I can see if the next sessions fit my busy day
  I'd like to see the upcoming events

  Background:
    Given following events exist:
      | name       | start_date                    | duration | live  |
      | Standup1   | 2014/02/03 07:00:00 UTC       | 150      | false |
      | PP Session | 2019/02/07 10:00:00 UTC       | 15       | false |
      | Standup2   | 2014/01/03 07:00:00 UTC       | 150      | false |
    Given the date is "2014/02/05 09:15:00 UTC"

  @javascript
  Scenario: see upcoming events
    Given I visit the page for events
    Then I should see "PP Session"
    And I should not see "Standup1"
    And I should not see "Standup2"
