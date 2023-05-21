Rails.application.routes.draw do
  get 'cars/new'
  resources :clients do
    resources :cars, only: %i[new create]
  end
end
