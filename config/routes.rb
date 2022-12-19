Rails.application.routes.draw do
  get 'shopping_list/index'
  get 'recipe_foods/index'
  get 'recipes/index'
  get 'inventory_foods/index'
  get 'inventories/index'
  get 'inventories/show'
  get 'foods/index'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  root to: "home#index"
  # Defines the root path route ("/")
  # root "articles#index"
end
