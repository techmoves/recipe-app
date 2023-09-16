class Recipe < ApplicationRecord
  has_many :recipe_foods
  has_many :foods, through: :recipe_foods
  belongs_to :user

  attribute :public, :boolean, default: false

  belongs_to :user

  validates :name, presence: true
  validates :preparation_time, presence: true
  validates :cooking_time, presence: true
  validates :description, presence: true
  validates :public, presence: true
end
