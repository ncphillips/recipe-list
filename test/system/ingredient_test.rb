require "application_system_test_case"

class IngredientTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit ingredients_url

    assert_selector "h1", text: "Ingredient"
  end
end