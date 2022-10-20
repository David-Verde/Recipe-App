Rails.application.routes.draw do
  get 'general_shopping_list', to: 'general_shopping_list#index'

  resources :recipes

  get '/public_recipes', to: 'recipes#public_recipes'

  devise_for :users, path: ''
  resources :foods
  resources :recipes


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
