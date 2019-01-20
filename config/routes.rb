Rails.application.routes.draw do
  root "static_pages#home"
  recouses :tour
  namespace :admin do
    root "static_pages#index"
  end
end
