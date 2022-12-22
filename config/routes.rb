Rails.application.routes.draw do
  devise_for :users
  #get 'recipe_foods/index'
  #get 'recipes/index'
  #get 'inventory_foods/index'
  get 'inventories/index'
  #get 'inventories/show'
  #get 'foods/index'

 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get '/public_recipes', to: 'recipes#public'


  resources :recipes, only: [:public, :index, :show, :new, :create, :destroy] do
    resources :recipe_foods, only: [:index, :new, :create, :destroy]
  end

  resources :inventories, only: [:index, :show, :new, :create, :destroy] do
    resources :inventory_foods, only: [:index, :show, :new, :create, :destroy]
  end

  root to: "foods#index"

  resources :foods

  resources :shopping_lists
end


  # Defines the root path route ("/")
  # root "articles#index"

