Rails.application.routes.draw do
  get 'comments/index'
  get 'posts/index'
  root 'users#index'

  resources :users do
    resources :comments
  end
  resources :posts 

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
