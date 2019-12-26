Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'products#index'
  resources :products, :orders
 
  get "orders/index", to: "orders#index"  
  
  get "products", to: "products#index"
  get "orders/new", to: "orders#new"
  get "orders/:id/edit", to: "orders#edit", as: :order_edit
  patch "orders/:id", to: "orders#update"

  delete "orders/:id", to: "orders#destroy"

  get "products/:id", to: "products#show" 

  get "ordres/:id", to: "orders#show"  
  post "orders", to: "orders#create"





end
