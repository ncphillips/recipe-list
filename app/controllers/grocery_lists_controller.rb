class GroceryListsController < ApplicationController
  def index
    @grocery_lists = GroceryList.all
  end
end
