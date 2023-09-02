Rails.application.routes.draw do
  devise_for :users

  resources :posts, only: [:new, :create, :index] 
  # Your other routes go here...

  root 'posts#index' # Set a root route if needed.
end
