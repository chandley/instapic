require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))

When(/^I am on the homepage as an anonymous visitor$/) do
  visit('/')
end

Then(/^page should have content 'welcome to instapic'$/) do
  expect(page).to have_content("Welcome to instapic")
end