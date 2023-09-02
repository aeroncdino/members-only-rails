Rails.application.routes.draw do
  devise_for :users

  resources :posts, only: [:new, :create, :index] 
  # Your other routes go here...

  root 'posts#index' # Set a root route if needed.

  devise_scope :user do
    delete 'custom_sign_out', to: 'devise/sessions#destroy'
    get 'sign_out_redirected', to: 'posts#index' # Custom route to redirect after sign-out
  end
end
