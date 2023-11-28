# == Schema Information
#
# Table name: grocery_list_items
#
#  id              :integer          not null, primary key
#  amount          :decimal(, )      not null
#  unit            :string           not null
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
  # test "the truth" do
  #   assert true
  # end
end
