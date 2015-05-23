require 'minitest'
require 'minitest/reporters'
require_relative 'zip.rb'

Minitest::Reporters.use! [Minitest::Reporters::DefaultReporter.new({detailed_skip: false})]

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

Minitest.autorun
