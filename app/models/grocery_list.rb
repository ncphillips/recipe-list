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
end
