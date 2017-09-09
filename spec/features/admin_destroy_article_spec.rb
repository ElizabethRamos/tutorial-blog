require 'rails_helper'

feature 'User Destroy Article' do
  scenario 'successfully' do
    Article.create(title: 'Post', text: 'Alô, 1, 2, 3, testando...')

    visit root_path

    click_on 'Post'
    click_on 'Delete'

    visit root_path

    expect(page).not_to have_link('Second Post')
  end
end
