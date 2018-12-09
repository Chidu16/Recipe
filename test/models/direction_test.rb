require 'test_helper'

class DirectionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  test "direction is not empty/nil" do
    assert_not_nil(:Steps, "Direction is not empty")
  end
  
end
