Rails.application.routes.draw do
  resources :servers

  root "home#index"
end
