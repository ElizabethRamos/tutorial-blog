require 'rails_helper'

feature 'Visitor visit homepage' do
  scenario 'successfully' do
    visit root_path

    expect(page).to have_css('h1', text: 'Simple Blog')
    expect(page).to have_css('h4', text: 'Welcome to this blog!')
  end
end
