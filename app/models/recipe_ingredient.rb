# == Schema Information
#
# Table name: recipe_ingredients
#
#  id            :integer          not null, primary key
#  amount        :decimal(, )      not null
#  unit          :string           not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  ingredient_id :integer          not null
#  recipe_id     :integer          not null
#
# Indexes
#
#  index_recipe_ingredients_on_ingredient_id  (ingredient_id)
#  index_recipe_ingredients_on_recipe_id      (recipe_id)
#
# Foreign Keys
#
#  ingredient_id  (ingredient_id => ingredients.id)
#  recipe_id      (recipe_id => recipes.id)
#
class RecipeIngredient < ApplicationRecord
  include Quantifiable

  belongs_to :recipe
  belongs_to :ingredient
end
