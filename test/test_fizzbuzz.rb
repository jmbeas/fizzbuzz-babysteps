require "test/unit"
require "shoulda"
require "fizzbuzz"

class TestFizzbuzz < Test::Unit::TestCase

  should "say Fizz for multiples of 3" do
    assert_equal "Fizz", FizzBuzz.say(3)
    assert_equal "Fizz", FizzBuzz.say(6)
  end

  should "say Buzz for multiples of 5" do
    assert_equal "Buzz", FizzBuzz.say(5)
    assert_equal "Buzz", FizzBuzz.say(10)
  end

  should "say FizzBuzz for multiples of 3 and 5" do
    assert_equal "FizzBuzz", FizzBuzz.say(15)
  end

  should "say the number for the rest" do
    assert_equal "1", FizzBuzz.say(1)
    assert_equal "2", FizzBuzz.say(2)
    assert_equal "4", FizzBuzz.say(4)
  end

end
