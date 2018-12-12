require 'test_helper'

class MealPlanTest < ActiveSupport::TestCase
    
    test "must provide a meal plan if date is not provided" do 
      meal_plan = MealPlan.new
      assert_not_equal(true, meal_plan.save, "meal plan provided if date provided!")
   end
   
 
    # test "requires a start_date" do
    #   meal_plan.errors[:start_date].must_include "can't be blank"
    # end

    # test "requires an end_date" do
    #   meal_plan.errors[:end_date].must_include "can't be blank"
    # end

    # test "requires a user" do
    #   meal_plan.errors[:user].must_include "can't be blank"
    # end
 

end
