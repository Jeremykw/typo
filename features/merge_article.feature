Feature: Merge Articles
  As a blog administrator
  In order to prevent duplicity
  I want to be able to merge articles in my blog

  Background:
    Given the blog is set up as admin
    And I am logged into the admin panel as admin

  	Given the following articles exist:
  | id    | title       | author   | body                       | created_at  | updated_at  | user_id  |
  | 1001  | First_Blog  | Author 1 | Really Boring blog content | 25-Nov-1992 | 25-Nov-1992 | 11			 |
  | 2002  | Second_Blog | Author 2 | More Boring blog content   | 25-Nov-2013 | 25-Nov-2013 | 22			 |  

  
  Scenario: Merge Button should be visable if user is logged in as admin
  	Given I am on the Second_Blog page
  	Then I should see the merge article form

  Scenario: Successfully merge two articles into one
    Given I am on the Second_Blog page
    And I am logged in as 'admin'
    And I fill in "merge_article_id" with "1001"
    And I press "Merge"
    Then I should be on the Second_Blog page    
    And I should see "Really Boring blog content"
    And I should see "More Boring blog content"

  Scenario: Merge article does not exist, Merge fails
  	Given I am on the Second_Blog page
    And I fill in "merge_article_id" with "3003"
    And I press "Merge"
    Then I should be on the Second_Blog page    
    And I should see "More Boring blog content"
    And I should see error "Blog does not exist"

