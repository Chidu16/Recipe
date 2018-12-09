require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  test "must have an instance" do 
      assert_instance_of String, "Good Recipe"
      
  end

  
end
