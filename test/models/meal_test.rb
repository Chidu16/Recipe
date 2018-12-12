require "test_helper"

class MealTest < ActiveSupport::TestCase
  
  test "must provide a meal plan if date is not provided" do 
      meal = Meal.new
      assert_not_equal(true, meal.save, "meal plan provided if date provided!")
   end
  
end