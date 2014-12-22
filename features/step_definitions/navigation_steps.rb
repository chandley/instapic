require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))

Then(/^page should have content 'welcome to instapic'$/) do
  expect(page).to have_content("Welcome to instapic")
end