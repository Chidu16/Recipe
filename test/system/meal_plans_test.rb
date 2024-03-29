require "application_system_test_case"

class MealPlansTest < ApplicationSystemTestCase
  setup do
    @meal_plan = meal_plans(:one)
  end

  test "visiting the index" do
    visit meal_plans_url
    assert_selector "h1", text: "Meal Plans"
  end

  test "creating a Meal plan" do
    visit meal_plans_url
    click_on "New Meal Plan"

    fill_in "End Date", with: @meal_plan.end_date
    fill_in "Start Date", with: @meal_plan.start_date
    click_on "Create Meal plan"

    assert_text "Meal plan was successfully created"
    click_on "Back"
  end

  test "updating a Meal plan" do
    visit meal_plans_url
    click_on "Edit", match: :first

    fill_in "End Date", with: @meal_plan.end_date
    fill_in "Start Date", with: @meal_plan.start_date
    click_on "Update Meal plan"

    assert_text "Meal plan was successfully updated"
    click_on "Back"
  end

  test "destroying a Meal plan" do
    visit meal_plans_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Meal plan was successfully destroyed"
  end
end
