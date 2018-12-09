require 'test_helper'

class MealPlanTest < ActiveSupport::TestCase
    
    test "must provide a meal plan if date is not provided" do 
      meal_plan = MealPlan.new
      assert_not_equal(true, meal_plan.save, "meal plan provided if date provided!")
   end
end
