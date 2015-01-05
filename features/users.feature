Feature: Basic Navigation
    In order to enjoy looking at pictures
    As a not-signed in user
    I should see a welcome page and be invited to sign up 

    Scenario: Welcome to instapic
    Given I am on the homepage as an anonymous visitor
    Then page should have content 'welcome to instapic'

    Scenario: Decide to sign up
    Given I am on the homepage as an anonymous visitor
    When I click 'sign up'
    Then I should be invited to enter an email and password

    Scenario: Sign up
    Given I am on the homepage as an anonymous visitor
    When I go to sign-up page and enter my details 
    Then I should be logged on
   