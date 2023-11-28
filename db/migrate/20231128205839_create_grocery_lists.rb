class CreateGroceryLists < ActiveRecord::Migration[7.1]
  def change
    create_table :grocery_lists do |t|

      t.timestamps
    end
  end
end
