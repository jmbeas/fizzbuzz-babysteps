require "test/unit"
require "shoulda"

class TestFizzbuzz < Test::Unit::TestCase

  def say(n)
    return "2" if n == 2
    "1"
  end

  should "say 1 for 1" do
    assert_equal "1", say(1)
  end

  should "say 2 for 2" do
    assert_equal "2", say(2)
  end

  should "say Fizz for 3" do
    assert_equal "Fizz", say(3)
  end

end
