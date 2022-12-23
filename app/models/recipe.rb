class Recipe < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: 'user_id'
  has_many :recipe_foods

  validates :name, presence: true
  validates_length_of :name, minimum: 2, maximum: 250
  validates :description, presence: true
  validates_length_of :name, minimum: 2, maximum: 3000
  validates :description, presence: true
  validates_length_of :description, minimum: 2, maximum: 3000
  validates :preparation_time, presence: true
  validates_length_of :preparation_time, minimum: 2, maximum: 250
  validates :cooking_time, presence: true
  validates_length_of :cooking_time, minimum: 2, maximum: 250
end
