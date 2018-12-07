require 'test_helper'

class RecipeTest < ActiveSupport::TestCase
  
            
            
            test "must not save a recipe when name is not provided" do 
                  recipe = Recipe.new(name: "Palak Paneer")
                  assert_equal(false, recipe.save, "saved the recipe even though at least one of the fields were not provided!")

            
            
      end
  
#    test "should not save a recipe without name" do
#     recipe = Recipe.new
#     assert_not recipe.save
   end
end
