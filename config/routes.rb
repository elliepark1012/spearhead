Rails.application.routes.draw do
  resources :brands, only: [ :index, :show, :create, :update, :destory]
  resources :orders, only: [ :create]
  resources :users, only: [ :show, :create]
  resources :hats
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
