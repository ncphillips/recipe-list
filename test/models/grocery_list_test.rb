# == Schema Information
#
# Table name: grocery_lists
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

class GroceryListTest < ActiveSupport::TestCase
  test "adding an ingredient" do
    list = GroceryList.create

    list.add(1.cup, ingredients(:peanut_butter))

    assert_includes list.ingredients, ingredients(:peanut_butter)
  end

  test "adding ingredients from a recipe" do
    list = GroceryList.create
    recipe = recipes(:pb_and_j)

    list.add_all_from(recipe)

    assert_includes list.ingredients, ingredients(:peanut_butter)
    assert_includes list.ingredients, ingredients(:jelly)
    assert_includes list.ingredients, ingredients(:bread)
  end

  test "checking off items" do
    list = grocery_lists(:one)

    list.check_off(ingredients(:peanut_butter))

    refute list.whats_left.include?(ingredients(:peanut_butter))
  end
end
