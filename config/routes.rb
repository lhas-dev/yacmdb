Rails.application.routes.draw do
  resources :server_softwares
  resources :softwares
  resources :hardwares
  resources :people
  resources :servers

  root "home#index"
end
