Rails.application.routes.draw do

  resources :products

  resources :checkout, only: [:create]
  post "checkout/create", to: "checkout#create"
  root "products#index"

  resources :webhooks, only: [:create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
