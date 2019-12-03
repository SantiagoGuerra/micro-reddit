Rails.application.routes.draw do
  get 'comments/index'
  get 'posts/index'
  root 'users#index'

  resources :users
  resources :posts do
    resources :comments
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
