require 'spec_helper'
require 'capybara/rspec'
require_relative '../app'

Capybara.app = App

feature 'user can manage items' do
  scenario 'user can add an item' do
    visit '/'
    expect(page).to have_link("New Item")



  end
end