Rails.application.routes.draw do
  get 'welcome/index'
  root 'welcome#index'

  get 'articles/:id', to: 'articles#show', as: 'article'
  get 'new_article', to: 'articles#new'
  post 'articles', to: 'articles#create'
  get 'articles/:id/edit', to:'articles#edit', as: 'edit_article'
  post 'articles/:id', to:'articles#update', as: 'update_article'
  put 'articles/:id', to:'articles#update'
  delete 'articles/:id', to: 'articles#destroy'

end
