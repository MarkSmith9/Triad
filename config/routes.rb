Rails.application.routes.draw do
  get 'public/index'
  get 'public/customer_orders'
  get 'access/logout'
  post 'access/customer_login_attempt'
  post 'access/supplier_login_attempt'
  post 'access/pharmacy_login_attempt'
  get 'access/customer_login'
  get 'access/supplier_login'
  get 'access/pharmacy_login'


  resources :pharmacies
  resources :customers do
    resources :customer_orders
  end
  resources :suppliers
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"


  root "public#index"
end
