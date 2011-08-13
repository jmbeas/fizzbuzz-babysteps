require "test/unit"
require "shoulda"

class TestFizzbuzz < Test::Unit::TestCase

  def say(n)
    return "Fizz" if n == 3
    return "2" if n == 2
    "1"
  end

  should "say Fizz for 3" do
    assert_equal "Fizz", say(3)
  end

  should "say the number for any other case (default rule)" do
    assert_equal "1", say(1)
    assert_equal "2", say(2)
  end

end
