Feature: User sign up and registration
  As a punter
  I want to become a member and add value to the community.

  Scenario: A user signs up with valid information
    Given I am on the sign up page
    When I sign up as a user with email "bob@gmail.com"
    Then I should have an account

  Scenario: A user logs in with valid information
    Given I am on the login page
    And I have already registered as "bob@gmail.com"
    When I login with correct information
    Then I should see "Welcome back"
