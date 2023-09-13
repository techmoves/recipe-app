class Food < ApplicationRecord
  has_many :inventory_foods
  has_many :inventories, through: :inventory_foods
  has_many :recipe_foods
  has_many :recipes, through: :recipe_foods

  validates :name, presence: true
  validates :price, presence: true
end
