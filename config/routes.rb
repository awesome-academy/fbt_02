Rails.application.routes.draw do
  root "static_pages#home"
  namespace :admin do
    root "static_pages#index"
  end
  get "/login", to: "sessions#login"
  post "/login", to: "sessions#create"
  delete "/logout",  to: "sessions#destroy"
  get "/signup", to: "users#new"
  get "/index", to: "book_tours#index"
  post "/signup", to: "users#create"
  resources :tours
  resources :book_tours
  resources :users
end
