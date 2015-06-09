require_relative '../test_helper'
require_relative 'sums_to_hundred'

class SumsToHundredTest < Minitest::Test
  def setup
  end

  def test_trivialy
    sum = eval(SumsToHundred.all.sample.join)
    assert 100, sum

  end
end
