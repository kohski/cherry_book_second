require 'minitest/autorun'
require './lib/fizz_buzz.rb'

class FizzBuzzTest < Minitest::Test
  def test_fizz_buzz
    assert_equal '1', fizz_buzz(1)
  end
end
