require 'minitest'
require 'minitest/reporters'
require_relative 'fibonacci'

Minitest::Reporters.use! [Minitest::Reporters::DefaultReporter.new({detailed_skip: false})]

class FibonacciTest < Minitest::Test
  def setup
  end

  def test_basic_cases
    assert_equal 0, Fibonacci.of(0)
    assert_equal 1, Fibonacci.of(1)
  end

  def test_next_cases
    [
      [2, 1],
      [3, 2],
      [4, 3],
      [5, 5],
    ].each do |index, f|
      assert_equal f, Fibonacci.of(index)
    end
  end

  def test_first_100
    f_list = Fibonacci.first_100
    assert_equal 13, f_list[7]
  end
end

Minitest.autorun
