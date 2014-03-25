require 'spec_helper'
require 'capybara/rspec'
require_relative '../app'

Capybara.app = App

feature 'user can manage items' do
  scenario 'user can add an item' do
    visit '/items'
    expect(page).to have_content("New Item")
    click_link("New Item")
    fill_in "new_item", with: "Sag Paneer"
    click_on("Submit")
    expect(page).to have_content("Sag Paneer")
    click_link("Show Item")
    within ("h1") do
      expect(page).to have_content("Sag Paneer")
    end
    click_link("Edit Item")
    fill_in "edit_item", with: "Channa Masala"
    click_on("Submit")
    expect(page).to have_content("Channa Masala")
  end
end