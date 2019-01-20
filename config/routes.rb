Rails.application.routes.draw do
  root "static_pages#home"
  resources :tours
  namespace :admin do
    root "static_pages#index"
  end
end
