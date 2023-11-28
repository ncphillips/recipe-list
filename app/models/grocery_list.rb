# == Schema Information
#
# Table name: grocery_lists
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class GroceryList < ApplicationRecord
  has_many :grocery_list_items
  has_many :ingredients, through: :grocery_list_items

  def whats_left
    grocery_list_items.where(checked: false).map(&:ingredient)
  end

  def add(quantity, ingredient)
    grocery_list_items.create(quantity:, ingredient:)
  end

  def add_all_from(recipe)
    recipe.recipe_ingredients.each do |recipe_ingredient|
      add(recipe_ingredient.quantity, recipe_ingredient.ingredient)
    end
  end

  def check_off(ingredient)
    grocery_list_items.find_by(ingredient: ingredient).check
  end

  def to_s
    name
  end
end
