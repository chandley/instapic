Feature: Add pictures
  In order to share nice pictures
  As a signed-in user
  I should be able to add a picture

  Scenario: Add first picture
  Given I have signed in as a user
  When I upload a photo with a caption
  Then I should see my photo on the site