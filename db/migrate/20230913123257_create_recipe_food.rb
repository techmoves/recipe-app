class CreateRecipeFood < ActiveRecord::Migration[7.0]
  def change
    create_table :recipe_foods do |t|
      t.string :quantity
      t.references :recipe, foreign_key: { to_table: :recipe }
      t.timestamps null: false
    end
  end
end
