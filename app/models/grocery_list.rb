# == Schema Information
#
# Table name: grocery_lists
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class GroceryList < ApplicationRecord
  has_many :grocery_list_items
  has_many :ingredients, through: :grocery_list_items

  def add(quantity, ingredient)
    grocery_list_items.create(quantity:, ingredient:)
  end

  def add_all_from(recipe)
    recipe.recipe_ingredients.each do |recipe_ingredient|
      add(recipe_ingredient.quantity, recipe_ingredient.ingredient)
    end
  end
end
