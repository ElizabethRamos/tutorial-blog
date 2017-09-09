require 'rails_helper'

feature 'User update Article' do
  scenario 'successfully' do

    visit root_path

    click_on 'New Article'

    fill_in 'Title', with: 'Third Post'
    fill_in 'Text', with: 'This is a Third Post..'
    click_on 'Send'

    expect(page).to have_content('Third Post')
  end
end
