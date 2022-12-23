class ShoppingListsController < ApplicationController
  def new
    @inventories = Inventory.all
  end

  def index
    @recipe = Recipe.find(params[:recipe_id])
    @recipe_foods = @recipe.recipe_foods.includes(:food)
    @inventory = Inventory.find(params[:inventory_id])
    @inventory_foods = @inventory.inventory_foods.includes(:food)

    @shopping_lists = []
    @total_price = 0

    @recipe_foods.each do |recipe_food|
      inventory_food = @inventory_foods.find { |i_food| i_food.food_id == recipe_food.food_id }
      if inventory_food
        quantity = recipe_food.quantity - inventory_food.quantity
        if quantity.positive?
          @shopping_lists << { name: recipe_food.food.name, quantity:, price: recipe_food.food.price, total_price: recipe_food.food.price * quantity }
          @total_price += recipe_food.food.price * quantity
        end
      else
        @shopping_lists << { name: recipe_food.food.name, quantity: recipe_food.quantity, price: recipe_food.food.price, total_price: recipe_food.food.price * recipe_food.quantity }
        @total_price += recipe_food.food.price * recipe_food.quantity
      end
    end
  end
end
