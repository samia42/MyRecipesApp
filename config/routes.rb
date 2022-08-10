Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "pages#home"
  get "pages/home", to: "pages#home"

   get '/recipes', to: "recipes#index"
  # get 'recipes/new', to: 'recipes#new', as:'new_recipe'
  # get '/recipes/:id', to: "recipes#show", as: "recipe"
  # post '/recipes', to: 'recipes#create'
  resources :recipes
  get "/signup", to: "chefs#new"
  resources :chefs, except: [:new]
  
end
