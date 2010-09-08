Given /^a user, let's call him "([^\"]*)"$/ do |name|
  remember_user(name) 
end

When /^Dave visits the home page$/ do
  visit('/')
end

When /^Dave chooses to "([^\"]*)"$/ do |action|
  click_link(action)
end

Then /^Dave should be redirected to Twitter to authorise the application$/ do
  current_url.should == "http://localhost:4567/" 
end

Then /^when Dave authorises the application with Twitter$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^Dave should be able to "([^\"]*)"$/ do |text|
  page.should have_link('Sign in with Twitter') 
end
