Rails.application.routes.draw do
  resources :brands
  resources :orders
  resources :users
  resources :hats
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
