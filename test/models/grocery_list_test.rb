# == Schema Information
#
# Table name: grocery_lists
#
#  id         :integer          not null, primary key
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
end
