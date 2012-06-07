Feature: garethrushgrove.com

  Scenario: home page present and correct
    Given I visit the homepage
    Then I should see Gareth Rushgrove
    And I should get a 200 status code
