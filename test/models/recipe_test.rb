require 'test_helper'

class RecipeTest < ActiveSupport::TestCase
<<<<<<< HEAD
   # test "the truth" do
   #  assert true
   # end   
            
   test "must not save a recipe when name is not provided" do 
      recipe = Recipe.new(name: "Red Pasta")
      assert_equal(false, recipe.save, "saved the recipe even though at least one of the fields were not provided!")

=======
  
      test "the truth" do
            assert true
      end
  
   test "should not save a recipe without name" do
     recipe = Recipe.new
     assert_not recipe.save
>>>>>>> 97cc4102a68f494c5eb2cfe26461f9f43489b447
   end
   
end
