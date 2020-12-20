Feature: As a user I want to browse vivino app

  @Home_Page
  Scenario: When I open app, I should see Home screen
    Given I click on OK button
    Then I click on Try us out link at the bottom left corner of the screen
    Then I click on Next
    And I click on Continue without account
    Then I land on My Profile Screen


