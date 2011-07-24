require "test/unit"
require "shoulda"

class FizzBuzz
  def self.fizzy?(n)
    n % 3 == 0
  end
  def self.buzzy?(n)
    n % 5 == 0
  end
  def self.sayFizzWhenFizzy(n)
    return "Fizz" if fizzy? n
    ""
  end
  def self.sayBuzzWhenBuzzy(n)
    return "Buzz" if buzzy? n
    ""
  end
  def self.sayNumber(n)
    return n.to_s
  end
  def self.say(n)
    result = ""
    result = sayFizzWhenFizzy(n) + sayBuzzWhenBuzzy(n)
    if result == ""
      result = sayNumber(n)
    end
    result
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
