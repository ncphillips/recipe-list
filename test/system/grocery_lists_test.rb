require "application_system_test_case"

class GroceryListsTest < ApplicationSystemTestCase
  setup do
    @recipe = GroceryList.create(name: "Test Recipe")
  end

  test "visiting the index" do
    visit grocery_lists_url

    assert_selector "h1", text: "Grocery Lists"
    assert_link "Test Recipe"
  end
end
