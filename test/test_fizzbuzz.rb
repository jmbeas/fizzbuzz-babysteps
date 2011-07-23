require "test/unit"
require "shoulda"

class FizzBuzz
  def self.say(n)
    "1"
  end
end

class TestFizzbuzz < Test::Unit::TestCase

  def say(n)
    FizzBuzz.say(n)
  end

  should "say 1 for 1" do
    assert_equal "1", say(1)
  end

end
