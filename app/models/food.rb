class Food < ApplicationRecord
  has_many :inventory_foods, dependent: :destroy
end
