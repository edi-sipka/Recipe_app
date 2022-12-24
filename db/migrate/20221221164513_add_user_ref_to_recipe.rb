class AddUserRefToRecipe < ActiveRecord::Migration[7.0]
  def self.up
    add_reference :recipes, :user, null: false, foreign_key: true
  end

  def self.down
    remove_reference :recipes, :user, null: false
  end
end
