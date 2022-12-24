class AddFoodRefToRecipeFood < ActiveRecord::Migration[7.0]
  def self.up
     add_reference :recipe_foods, :food, null: false, foreign_key: true
  end

  def self.down
     remove_reference :recipe_foods, :food, null: false
  end
end
