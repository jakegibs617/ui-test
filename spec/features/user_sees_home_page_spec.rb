require 'rails_helper'

feature 'user visits root page', %{
  As a user
  I want to see a home page
  So that all the info is there
} do

  scenario 'visits root page' do
    visit root_path
    expect(page).to have_content("Hello World")
  end
end
