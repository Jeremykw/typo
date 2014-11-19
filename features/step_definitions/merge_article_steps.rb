Given /^the following articles exist:$/ do |articles_table|
  articles_table.hashes.each do |article|
    Article.create do |add_article|
      add_article.id = article[:id]
      add_article.title = article[:title]
      add_article.author = article[:author]
      add_article.body = article[:body]
      add_article.created_at = article[:created_at]
      add_article.updated_at = article[:updated_at]
      add_article.user_id = article[:user_id]      
    end
  end
end


Given(/^I am logged in as 'admin'$/) do
  @user.id == 1
end

Given(/^I am not logged in as 'admin'$/) do
  @user.id != 1
end

Then(/^I should see the merge article form$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should not see the merge article form$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see error "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end
