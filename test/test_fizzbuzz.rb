require "test/unit"
require "shoulda"

class TestFizzbuzz < Test::Unit::TestCase

  def say(n)
    return "Fizz" if n == 3
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
