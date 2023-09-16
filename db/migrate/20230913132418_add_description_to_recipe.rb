class AddDescriptionToRecipe < ActiveRecord::Migration[7.0]
  def change
    add_column :recipes, :description, :string
  end
end
