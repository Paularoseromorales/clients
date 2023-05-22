Rails.application.routes.draw do
  resources :clients do
    resources :cars, only: %i[new create]
  end
  resources :cars, only: [:destroy]
end
