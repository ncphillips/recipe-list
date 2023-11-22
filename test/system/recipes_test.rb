require "application_system_test_case"

class RecipesTest < ApplicationSystemTestCase
  setup do
    @recipe = recipes(:pb_and_j)
  end

  test "visiting the index" do
    visit recipes_url

    assert_selector "h1", text: "Recipes"
  end

  test "creating a recipe" do
    visit recipes_url
    click_on "New recipe"

    fill_in "Name", with: @recipe.name
    fill_in "Instructions", with: @recipe.instructions
    click_on "Create Recipe"

    assert_text "Recipe was successfully created"
    click_on "Back"
  end

  test "editing a Recipe" do
    visit recipe_url(@recipe)
    click_on "Edit this recipe", match: :first

    fill_in "Name", with: @recipe.name + " (2)"
    fill_in "Instructions", with: @recipe.instructions + "\n Then eat it!"
    click_on "Update Recipe"

    assert_text "Recipe was successfully updated"
    click_on "Back"
  end

  test "destroying a Recipe" do
    visit recipe_url(@recipe)
    click_on "Destroy this recipe", match: :first

    assert_text "Recipe was successfully destroyed"
  end
end
