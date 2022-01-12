Rails.application.routes.draw do
  resources :hardwares
  resources :people
  resources :servers

  root "home#index"
end
