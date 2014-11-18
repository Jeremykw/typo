Feature: New Categorie
  As an author
  In order to organize my posts
  I want to create a new categorie

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Create new catagorie
    Given I am on the admin page
    When I follow "Categories"
    Then I should be on the Categories page
