class AddUserRefToFood < ActiveRecord::Migration[7.0]
  def self.up
    add_reference :foods, :user, null: false, foreign_key: true
  end

  def self.down
    remove_reference :foods, :user, null: false
  end
end
