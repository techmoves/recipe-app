class CreateInventoryFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :inventory_foods do |t|
      t.string :quantity

      t.references :inventory, foreign_key: { to_table: :inventories }

      t.timestamps
    end
  end
end
