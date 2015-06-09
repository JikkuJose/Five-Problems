require_relative '../test_helper'
require_relative 'zip.rb'

class ZipTest < Minitest::Test
  def setup
    @a = ['a', 'b']
    @b = [1, 2]
    @zip_a_and_b = ['a', 1, 'b', 2]
  end

  def test_basic_zip
    assert_equal @zip_a_and_b, Zip.them(first: @a, second: @b)
  end
end
