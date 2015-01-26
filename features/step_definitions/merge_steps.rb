Given /^the following articles exist$/ do |table|
  # table is a Cucumber::Ast::Table
  Article.create table.hashes
end

Then /^the article "(.*?)" should have the body "(.*?)"$/ do |title, body|
  Article.find_by_title(title).body.should eql body
end

