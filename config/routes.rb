Rails.application.routes.draw do
  devise_for :users

  resources :posts, only: [:new, :create, :index] 
  # Your other routes go here...

  root 'posts#index' # Set a root route if needed.

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
end
