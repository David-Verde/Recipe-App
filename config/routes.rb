Rails.application.routes.draw do

  resources :recipes

  get '/public_recipes', to: 'recipes#public_recipes'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
