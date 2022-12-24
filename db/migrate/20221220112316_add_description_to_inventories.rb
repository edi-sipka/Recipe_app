class AddDescriptionToInventories < ActiveRecord::Migration[7.0]
  def self.up
    add_column :inventories, :description, :string
  end

  def self.down
    remove_column :inventories, :description, :string
  end
end
