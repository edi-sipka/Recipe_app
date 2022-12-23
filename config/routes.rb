Rails.application.routes.draw do
  devise_for :users
  get 'inventories/index'


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get '/public_recipes', to: 'recipes#public'

  resources :recipes, only: [:public, :index, :show, :new, :create, :destroy, :update] do
    resources :recipe_foods
  end

  resources :inventories, only: [:index, :show, :new, :create, :destroy] do
    resources :inventory_foods
  end

  root to: "foods#index"

  resources :foods, only: [:index, :new, :create, :destroy]
  resources :recipes do
    resources :shopping_lists
    resources :recipe_foods, only: [:new, :create, :destroy]
  end

  resources :shopping_list
end
