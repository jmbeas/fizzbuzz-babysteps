require "test/unit"
require "shoulda"

class FizzBuzz
end

class TestFizzbuzz < Test::Unit::TestCase

  def say(n)
    "1"
  end

  should "say 1 for 1" do
    assert_equal "1", say(1)
  end

end
