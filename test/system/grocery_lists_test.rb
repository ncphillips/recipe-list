require "application_system_test_case"

class GroceryListsTest < ApplicationSystemTestCase
  setup do
    @list = GroceryList.create(name: "Test Recipe")
    @list.add(1.cup, ingredients(:peanut_butter))
  end

  test "visiting the index" do
    visit grocery_lists_url

    assert_selector "h1", text: "Grocery Lists"
    assert_link "Test Recipe"
  end

  test "viewing a grocery list" do
    visit grocery_list_url(@list)

    assert_selector "h1", text: "Test Recipe"
    assert_selector "li", text: "1 cup of Peanut Butter"
  end
end
