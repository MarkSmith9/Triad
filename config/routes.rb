Rails.application.routes.draw do
  get 'customer_pharmacy_order/new'
  get 'customer_pharmacy_order/create'
  get 'supplier_orders/new'
  get 'supplier_orders/create'
  get 'pharmacy_orders/new'
  get 'pharmacy_orders/create'
  get 'public/index'
  get 'public/customer_orders'
  get 'public/pharmacy_orders'
  get 'public/collection'
    get 'public/view_orders'
   get 'public/pharmacy_viewer'
   get 'public/supplier_orders'
  get 'access/logout'
  post 'access/customer_login_attempt'
  post 'access/supplier_login_attempt'
  post 'access/pharmacy_login_attempt'
  get 'access/customer_login'
  get 'access/supplier_login'
  get 'access/pharmacy_login'


  resources :pharmacies do
    resources :pharmacy_orders
    resources :customer_pharmacy_orders    
  end
  resources :customers do
    resources :customer_orders
  end
  resources :suppliers do
    resources :supplier_orders
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"


  root "public#index"
end
