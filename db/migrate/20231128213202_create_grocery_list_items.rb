class CreateGroceryListItems < ActiveRecord::Migration[7.1]
  def change
    create_table :grocery_list_items do |t|
      t.decimal :amount
      t.string :unit
      t.references :ingredient, null: false, foreign_key: true
      t.references :grocery_list, null: false, foreign_key: true
      t.boolean :checked

      t.timestamps
    end
  end
end
