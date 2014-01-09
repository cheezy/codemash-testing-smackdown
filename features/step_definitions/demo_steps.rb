Given(/^I am on the demo site$/) do
  visit HomePage
end

When(/^I login$/) do
  on(HomePage).perform_login
end

Then(/^I should see the heading "([^"]*)"$/) do |expected_text|
  @current_page.wait_until do
    @current_page.text.include? expected_text
  end
end

Given(/^I am on The Internet site$/) do
  visit TheInternet
end

When(/^I invoke the second dynamic loading example$/) do
  navigate_all(:using => :dynamic_loading)
end

Then(/^I should see the "([^"]*)" prompt$/) do |expected_prompt|
  on(DynamicLoadingExample2).should have_prompt expected_prompt
end

Then(/^I select the Back To menu option$/) do
  navigate_all
end

Then(/^I should be on the JQueryUI page$/) do
  @current_page.text.should include 'JQuery UI is many things'
end