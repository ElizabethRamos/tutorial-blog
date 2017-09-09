require 'rails_helper'

feature 'verify if the route is protected' do
  scenario 'successfully' do
    Article.create(title: 'First Post', text: 'Alô, 1, 2, 3, testando...')

    visit root_path

    click_on 'First Post'

    expect(current_path).to eq('/articles/first-post')
  end
end
