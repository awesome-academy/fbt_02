Rails.application.routes.draw do
  root "static_pages#home"
  namespace :admin do
    root "static_pages#index"
  end
  get "/login", to: "sessions#login"
  post "/login", to: "sessions#create"
  get "/signup", to: "users#new"
  post "/signup", to: "users#create"
  resources :tours
  resources :book_tours
  resources :users
end
