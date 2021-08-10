def fizz_buzz(number)
  if number%15 == 0
    "fizz_buzz"
  elsif number%3 == 0
    "fizz"
  elsif number%5 == 0
    "buzz"
  else
    number
  end
end

# number = gets.to_i
# puts fizz_buzz(number)
require 'minitest/autrun'

class FizzBuzzTest < Minitest::Test
  def test_fizz_buzz
    assert_equal '1', fizz_buzz(1)
    assert_equal '2', fizz_buzz(2)
    assert_equal 'fizz', fizz_buzz(3)
  end
end