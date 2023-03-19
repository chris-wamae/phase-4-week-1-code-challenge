Rails.application.routes.draw do
  resources :pizzas,only:[:index,:create]
  resources :restaurant_pizzas, only:[:create]
  resources :restaurants, only:[:index,:show,:create,:destroy]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
