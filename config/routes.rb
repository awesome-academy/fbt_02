Rails.application.routes.draw do
  root "static_pages#home"
  namespace :admin do
    root "static_pages#index"
  end
  get "/login", to: "sessions#login"
  post "/login", to: "sessions#create"
  resources :tours
  resources :book_tours
end
