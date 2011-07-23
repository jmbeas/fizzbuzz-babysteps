require "test/unit"
require "shoulda"

class TestFizzbuzz < Test::Unit::TestCase

  should "say 1 for 1" do
    assert_equal "1", say(1)
  end

end
