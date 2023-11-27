# == Schema Information
#
# Table name: recipes
#
#  id           :integer          not null, primary key
#  instructions :text
#  name         :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
# Indexes
#
#  index_recipes_on_name  (name)
#
class Recipe < ApplicationRecord
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients

  scope :containing, ->(ingredient) { joins(:ingredients).where(ingredients: [ingredient]) }

  def add(quantity, ingredient)
    recipe_ingredients.create(quantity:, ingredient:)
  end
end
