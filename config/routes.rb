Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :posts, only: [:new, :create, :index] do
    before_action :authenticate_user!, only [:new, :create]
  end

  root "posts#index"
end
