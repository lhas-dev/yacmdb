Rails.application.routes.draw do
  resources :people
  resources :servers

  root "home#index"
end
