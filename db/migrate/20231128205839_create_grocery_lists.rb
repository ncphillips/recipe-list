class CreateGroceryLists < ActiveRecord::Migration[7.1]
  def change
    create_table :grocery_lists do |t|
      t.string :name

      t.timestamps
    end
  end
end
