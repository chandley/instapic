Feature: Anonymous user
    When not signed in
    A visitor
    Should see some pictures and a welcome message

    Scenario: Given I am on the homepage
    Then page should have content 'welcome to instapic'