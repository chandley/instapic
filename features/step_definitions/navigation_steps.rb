require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))

When(/^I am on the homepage as an anonymous visitor$/) do
  visit('/')
end

Then(/^page should have content 'welcome to instapic'$/) do
  expect(page).to have_content("welcome to instapic")
end

When(/^I click 'sign up'$/) do
  click_link 'Sign up'
end

Then(/^I should be invited to enter an email and password$/) do
  expect(page).to have_content('Sign up')
end

Given(/^I am on the sign\-up page$/) do
  visit('/users/sign_up')
end

When(/^I go to sign\-up page and enter my details$/) do
    visit('/')
    click_link('Sign up')
    fill_in('Email', with: 'test@example.com')
    fill_in('Password', with: 'password')
    fill_in('Password confirmation', with: 'password')
    click_button('Sign up')
end

Then(/^I should be logged on$/) do
  expect(page).to have_content('Sign out')
end

Given(/^I have signed in as a user$/) do
  step 'I go to sign-up page and enter my details'
end

When(/^I upload a photo with a caption$/) do
  attach_file 'Picture', Rails.root.join('features/images/cat.jpg')
  fill_in('caption', with: "picture of cat")
  click_button('Add picture')
end

Then(/^I should see my photo on the site$/) do
  expect(page).to have_content('picture of cat')
  expect(page).to have_css 'img.uploaded-pic'
end