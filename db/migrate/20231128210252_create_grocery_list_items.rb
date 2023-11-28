class CreateGroceryListItems < ActiveRecord::Migration[7.1]
  def change
    create_table :grocery_list_items do |t|
      t.numeric :amount, null: false
      t.string :unit, null: false
      t.references :ingredient, null: false, foreign_key: true
      t.references :grocery_list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
