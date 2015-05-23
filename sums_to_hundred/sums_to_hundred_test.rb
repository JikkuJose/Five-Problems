require 'minitest'
require 'minitest/reporters'
require_relative 'sums_to_hundred'

Minitest::Reporters.use! [Minitest::Reporters::DefaultReporter.new({detailed_skip: false})]

class SumsToHundredTest < Minitest::Test
  def setup
  end

  def test_trivialy
    sum = eval(SumsToHundred.all.sample.join)
    assert 100, sum

  end
end

Minitest.autorun
