Rails.application.routes.draw do
  resources :add_ship_to_aliens
  resources :ships
  resources :powers
  resources :planets
  resources :aliens

     root 'aliens#index'
end
