Rails.application.routes.draw do
  resources :softwares
  resources :hardwares
  resources :people
  resources :servers

  root "home#index"
end
