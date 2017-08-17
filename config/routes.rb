Rails.application.routes.draw do
  get 'welcome/index'
  root 'welcome#index'
  resources :articles, only: [:new, :create, :show] 
end
