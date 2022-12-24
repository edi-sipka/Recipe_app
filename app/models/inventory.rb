class Inventory < ApplicationRecord
  has_many :inventory_foods, foreign_key: :inventory_id, dependent: :destroy
end
