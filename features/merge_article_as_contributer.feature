Feature: Merge Articles as Contributer
  As a blog contributer
  In order to prevent confusion
  I shouldn't able to merge articles in mthe blog

  Background:
		Given the blog is set up as contributer
    And I am logged into the admin panel as contributer
  

    Given the following articles exist:
  | id    | title       | author   | body                       | created_at  | updated_at  | user_id  |
  | 1001  | First_Blog  | Author 1 | Really Boring blog content | 25-Nov-1992 | 25-Nov-1992 | 11       |
  | 2002  | Second_Blog | Author 2 | More Boring blog content   | 25-Nov-2013 | 25-Nov-2013 | 22       |  

  
    
  Scenario: Merge Form should not be visable if user is logged in as contributer
    And I am on the Second_Blog page
    And I am not logged in as 'admin'    
    Then I should not see the merge article form