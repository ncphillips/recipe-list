require "application_system_test_case"

class IngredientsTest < ApplicationSystemTestCase
  setup do
    @ingredient = ingredients(:one)
  end

  test "visiting the index" do
    visit ingredients_url
    assert_selector "h1", text: "Ingredients"
  end

  test "creating a ingredient" do
    visit ingredients_url
    click_on "New ingredient"

    fill_in "Name", with: @ingredient.name
    click_on "Create Ingredient"

    assert_text "Ingredient was successfully created"
    click_on "Back"
  end

  test "updating Ingredient" do
    visit ingredient_url(@ingredient)
    click_on "Edit this ingredient", match: :first

    fill_in "Name", with: @ingredient.name
    click_on "Update Ingredient"

    assert_text "Ingredient was successfully updated"
    click_on "Back"
  end

  test "destroying Ingredient" do
    visit ingredient_url(@ingredient)
    click_on "Destroy this ingredient", match: :first

    assert_text "Ingredient was successfully destroyed"
  end
end
