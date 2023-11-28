class GroceryListsController < ApplicationController
  before_action :set_grocery_list, only: [:show]

  def index
    @grocery_lists = GroceryList.all
  end

  def show
  end

  private

  def set_grocery_list
    @grocery_list = GroceryList.find(params[:id])
  end
end
