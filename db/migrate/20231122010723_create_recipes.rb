class CreateRecipes < ActiveRecord::Migration[7.1]
  def change
    create_table :recipes do |t|
      t.string :name
      t.text :instructions

      # Add index for the 'name' column
      t.index :name

      t.timestamps
    end
  end
end
