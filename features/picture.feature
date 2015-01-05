Feature: Add pictures
  In order to show my nice pictures to others
  As a signed-in user
  I should be able to add pictures to the site

  Scenario: Add first picture
  Given I am a signed in user
  When I add a picture
  Then the picture should appear on the homepage
  