Rails.application.routes.draw do
  #get 'recipe_foods/index'
  #get 'recipes/index'
  #get 'inventory_foods/index'
  get 'inventories/index'
  #get 'inventories/show'
  #get 'foods/index'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :recipes do
    resources :recipe_foods
  end

  resources :inventories do
    resources :inventory_foods, only: [:index, :new, :create, :destroy]
  end

  root to: "foods#index"

  resources :foods
  resources :recipes do
    resources :shopping_lists
    resources :recipe_foods
  end

  resources :shopping_lists
end


  # Defines the root path route ("/")
  # root "articles#index"

