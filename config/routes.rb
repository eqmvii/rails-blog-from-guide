Rails.application.routes.draw do
  get 'welcome/index'

  resources :articles do
    resources :comments # A nested resource within articles; capturing the heirarchical relationship of posts and comments
  end

  root 'welcome#index'
end
