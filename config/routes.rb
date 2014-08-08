Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get "products/customer_cart"
  get "contact", :to => "pages#contact", :as => "contact"
  get "about", :to => "pages#about", :as => "about"
  get "customer_service", :to => "pages#customer_service", :as => "customer_service"
  get "subscribe", :to => "pages#subscribe", :as => "subscribe"
  get "charges/express_checkout", :as => "express_checkout"

  match 'contact_us' => 'pages#new', :as => 'contact_us', :via => :get
  match 'contact_us' => 'pages#create', :as => 'contact_uss', :via => :post

  get "ping", :to => "products#ping", :as => "ping"

  resources :products
  resources :line_items
  resources :charges
  resources :carts
  resources :orders
  
  root 'products#welcome'
end