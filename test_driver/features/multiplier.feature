Feature: Multiplier
  The Multiplier should be multiplied when the button is pressed.

  Scenario: Multiplier multiplied when the button is pressed
    Given I expect the "multipleNum" to be "1"
    When I tap the "multipleButton" button 10 times
    Then I expect the "multipleNum" to be "1024"