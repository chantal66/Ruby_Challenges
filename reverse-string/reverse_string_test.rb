gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'reverse_string'

class ReverseStringTest < Minitest::Test
  def test_string_gets_reversed
    string = ReverseString.new('abcd')

    assert 'dcba', string.reverse
  end

  def test_reverses_string_w_spaces
    string = ReverseString.new('  abcd')

    assert 'dcba  ',string.reverse
  end
end