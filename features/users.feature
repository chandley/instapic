Feature: Anonymous user
    When not signed in
    A visitor
    Should see some pictures and a welcome message

    Scenario: Welcome to instagram
    When I am on the homepage as an anonymous visitor
    Then page should have content 'welcome to instapic'