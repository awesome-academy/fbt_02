Rails.application.routes.draw do
  devise_for :users
  root "static_pages#home"
  namespace :admin do
    root "static_pages#index"
    resources :reviews
    resources :users
  end
  resources :tours do
    resources :comments
  end
  resources :book_tours
  resources :users
end
