require "test/unit"
require "shoulda"

class FizzRule
  def message
    "Fizz"
  end
end

class BuzzRule
  def message
    "Buzz"
  end
end

class TestFizzbuzz < Test::Unit::TestCase

  def say(n)
    return FizzRule.new.message if n == 3
    return BuzzRule.new.message if n == 5
    n.to_s
  end

  should "say Fizz for 3" do
    assert_equal "Fizz", say(3)
  end

  should "say Buzz for 5" do
    assert_equal "Buzz", say(5)
  end

  should "say the number for any other case (default rule)" do
    assert_equal "1", say(1)
    assert_equal "2", say(2)
    assert_equal "4", say(4)
  end

end
