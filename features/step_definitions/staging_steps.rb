Given /^I visit the homepage/ do
  visit "http://#{ ENV['ENV'] == 'staging' ? 'staging.' : '' }garethrushgrove.com"
end

Then /^I should see (.*)$/ do |text|
  response_body.should contain text
end

Then /^I should get a (\d+) status code$/ do |status|
  webrat_session.response_code.should == status.to_i
end
