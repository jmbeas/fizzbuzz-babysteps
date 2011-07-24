require "test/unit"
require "shoulda"

class FizzBuzz
  def self.fizzable?(n)
    n % 3 == 0
  end
  def self.buzzable?(n)
    n % 5 == 0
  end
  def self.say(n)
    return "FizzBuzz" if fizzable? n and buzzable? n
    return "Fizz" if fizzable? n
    return "Buzz" if buzzable? n
    n.to_s 
  end
end

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
