require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))

Given(/^I am a signed in user$/) do
  step 'I go to sign-up page and enter my details'
end

When(/^I add a picture$/) do
    click_link 'Add an image'
    attach_file 'Image', File.join(Rails.root, 'spec', 'fixtures', 'files', 'cat.jpeg')
    fill_in 'Description', with: 'cat'
    click_button 'Post'
end

Then(/^the picture should appear on the homepage$/) do
  expect(page).to have_content('cat')
end