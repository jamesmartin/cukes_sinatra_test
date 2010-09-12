Feature: Login and authorise 
  In order to see information relevant to an account
  As a social network user
  I want to authorise the application via my Twitter account

  @mechanize
  Scenario: First time user login
    Given a user, let's call him "Dave"
    And a Social Network, where Dave's username is "dave" 
    When Dave visits the home page
    Then Dave should be able to "Sign in with Twitter"

    When Dave chooses to "Sign in with Twitter"
    Then Dave should be redirected to Twitter to authorise the application

    And when Dave authorises the application with Twitter
    Then Dave should see "Logged in as Dave"
