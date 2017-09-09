require 'rails_helper'

feature 'User update Article' do
  scenario 'successfully' do
    Article.create(title: 'Post', text: 'Alô, 1, 2, 3, testando...')

    visit root_path

    click_on 'Post'
    click_on 'Editar'

    fill_in 'Title', with: 'Second Post'
    click_on 'Send'

    expect(page).to have_content('Second Post')
  end
end
