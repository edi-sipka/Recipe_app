class AddInventoriesRefToInventoryFood < ActiveRecord::Migration[7.0]
  def self.up
    add_reference :inventory_foods, :inventory, null: false, foreign_key: true
  end

  def self.down
    remove_reference :inventory_foods, :inventory, null: false
  end
end
