require_relative '../test_helper'
require_relative 'largest_possible'

class LargestPossibleTest < Minitest::Test
  def setup
    @small_array = [1, 2]
    @result_for_small = 21
  end

  def test_initial_case
    assert_equal @result_for_small, LargestPossible.for(@small_array)
  end

  def test_provided_case
    given_array = [50, 2, 1, 9]
    assert_equal 95021, LargestPossible.for(given_array)
  end

  def test_corner_case
    given_array = [1, 10]
    assert_equal 110, LargestPossible.for(given_array)
  end
end
