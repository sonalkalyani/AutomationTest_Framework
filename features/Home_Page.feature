Feature: As a user I want to browse vivino app

  @Profile_Screen
  Scenario: When I open app without creating an account, I should land on My Profile screen
    Given I click on OK button
    Then I click on Try us out link at the bottom left corner of the screen
    Then I click on Next
    And I click on Continue without account
    Then I land on My Profile Screen

  @Shop_Screen
  Scenario: When I click on Shop icon, I should see Current Date on upper left corner of the Shop screen
    Given I click on OK button
    Then I click on Try us out link at the bottom left corner of the screen
    Then I click on Next
    And I click on Continue without account
    Then I land on My Profile Screen
    When I click on Shop icon
    Then I should land on Shop Screen
    Then I should see current date on upper left corner of the  screen

