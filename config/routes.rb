Rails.application.routes.draw do
  root "static_pages#home"
  namespace :admin do
    root "static_pages#index"
    resources :reviews
    resources :users
    resources :tours
  end
  get "/login", to: "sessions#login"
  post "/login", to: "sessions#create"
  delete "/logout",  to: "sessions#destroy"
  get "/signup", to: "users#new"
  # post "/signup", to: "users#create"
  resources :tours do
    resources :comments
  end
  resources :book_tours
  resources :users
end
