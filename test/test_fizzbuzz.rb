require "test/unit"
require "shoulda"

class FizzBuzz
  def self.say(n)
    return "2" if n == 2 
    "1"
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

end
