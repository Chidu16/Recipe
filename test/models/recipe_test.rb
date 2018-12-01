require 'test_helper'

class RecipeTest < ActiveSupport::TestCase
  test "should not save a recipe without name" do
    recipe = Recipe.new
    assert_not recipe.save
   end
end
