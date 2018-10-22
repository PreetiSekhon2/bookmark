require 'spec_helper'

feature 'B - View Bookmarks' do
  scenario 'visiting the homepage' do
    visit('/bookmarks')
    expect(page).to have_content "Bookmark Manager"
  end
end
