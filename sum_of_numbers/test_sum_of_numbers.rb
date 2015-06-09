require_relative '../test_helper'
require_relative 'sum_of_numbers.rb'

class SumOfNumbersTest < Minitest::Test
  def setup
  end

  def test_for_loop
    sum = SumOfNumbers.new([1, 2, 3]).for_loop
    assert_equal 6, sum
  end

  def test_while_loop
    sum = SumOfNumbers.new([1, 2, 3]).while_loop
    assert_equal 6, sum
  end

  def test_recursion
    sum = SumOfNumbers.new([1, 2, 3]).recursive_summation
    assert_equal 6, sum
  end
end
