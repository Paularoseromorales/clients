Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  root to: 'clients#index'
  resources :clients do
    resources :cars, only: %i[new create]
  end
  resources :cars, only: [:destroy]
end
