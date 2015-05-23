require 'minitest'
require 'minitest/reporters'
require_relative 'sum_of_numbers.rb'

Minitest::Reporters.use! [Minitest::Reporters::DefaultReporter.new({detailed_skip: false})]

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

Minitest.autorun
