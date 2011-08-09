require "test/unit"
require "shoulda"

class FizzBuzz
  def self.say(n)
    return "Fizz" if n == 3
    n.to_s
  end
end

class TestFizzbuzz < Test::Unit::TestCase

  should "say 1 for 1" do
    assert_equal "1", FizzBuzz.say(1)
  end

  should "say 2 for 2" do
    assert_equal "2", FizzBuzz.say(2)
  end

  should "say Fizz for 3" do
    assert_equal "Fizz", FizzBuzz.say(3)
  end

  should "say 4 for 4" do
    assert_equal "4", FizzBuzz.say(4)
  end

  should "say Buzz for 5" do
    assert_equal "Buzz", FizzBuzz.say(5)
  end

end
