# == Schema Information
#
# Table name: grocery_list_items
#
#  id              :integer          not null, primary key
#  amount          :decimal(, )
#  checked         :boolean
#  unit            :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  grocery_list_id :integer          not null
#  ingredient_id   :integer          not null
#
# Indexes
#
#  index_grocery_list_items_on_grocery_list_id  (grocery_list_id)
#  index_grocery_list_items_on_ingredient_id    (ingredient_id)
#
# Foreign Keys
#
#  grocery_list_id  (grocery_list_id => grocery_lists.id)
#  ingredient_id    (ingredient_id => ingredients.id)
#
require "test_helper"

class GroceryListItemTest < ActiveSupport::TestCase
  test "items aren't checked off by default" do
    item = GroceryListItem.create

    refute item.checked?
  end

  test "checking off an item" do
    item = GroceryListItem.create

    item.check

    assert item.checked?
  end
end
