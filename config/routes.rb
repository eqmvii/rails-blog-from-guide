Rails.application.routes.draw do
  get 'welcome/index'

  resources :articles

  get 'articles/destroy/' # does not work lol

  root 'welcome#index'
end
