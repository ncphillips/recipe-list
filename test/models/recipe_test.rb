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
require "test_helper"

class RecipeTest < ActiveSupport::TestCase
  test "adding ingredients to recipes" do
    recipe = Recipe.create(
      name: "Spoon of Peanut Butter",
      instructions: "Get a spoon. Get some peanut butter. Put the peanut butter on the spoon. Eat the peanut butter."
    )
    peanut_butter = ingredients(:peanut_butter)

    recipe.add(1, "tbsp", peanut_butter)

    assert_includes recipe.ingredients, peanut_butter
  end
end
