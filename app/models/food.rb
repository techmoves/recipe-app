class Food < ApplicationRecord
  has_many :inventory_foods
  has_many :inventories, through: :inventory_foods
  has_many :recipe_foods
  has_many :recipes, through: :recipe_foods

  validates :name, presence: true
  validates :price, presence: true

  def quantity(inventory_id)
    inventory_foods.find_by(inventory_id:).quantity
  end
end
