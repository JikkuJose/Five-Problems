require 'minitest'
require 'minitest/reporters'
require_relative 'largest_possible'

Minitest::Reporters.use! [Minitest::Reporters::DefaultReporter.new({detailed_skip: false})]

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
end

Minitest.autorun
