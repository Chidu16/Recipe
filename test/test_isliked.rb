require 'minitest/autorun'

require 'recipe'

class islikeTest < Minitest::Test
# Test if liked returns true
    def test_is_like_true
        assert_respond_to( likes, :create )
# assert_equal(true, CheckNumberEven.check(12))
    end

# # Test if an odd number returns false
# def test_is_even_false
# assert_equal(false, CheckNumberEven.check(23))
# end
# end