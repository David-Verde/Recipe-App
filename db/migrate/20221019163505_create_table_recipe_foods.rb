class CreateTableRecipeFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :recipe_foods do |t|
t.string :quantity
t.bigint :recipe_id, null: false
t.bigint :food_id, null: false
      t.timestamps
    end
  end
end
