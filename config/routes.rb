Rails.application.routes.draw do
  resources :pharmacies
  resources :customers
  resources :suppliers
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
