Rails.application.routes.draw do
  resources :powers
  resources :planets
  resources :aliens

     root 'aliens#index'
end
