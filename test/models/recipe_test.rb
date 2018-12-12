require 'test_helper'

class RecipeTest < ActiveSupport::TestCase
   # test "the truth" do
   #  assert true
   # end   
            
   test "must not save a recipe when name is not provided" do 
      recipe = Recipe.new(name: "Red Pasta")
      assert_equal(false, recipe.save, "saved the recipe even though at least one of the fields were not provided!")

   end
   
end
      