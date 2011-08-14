require "test/unit"
require "shoulda"

class TestFizzbuzz < Test::Unit::TestCase

  MESSAGE_WHEN_NUMBER_IS_FIZZY = "Fizz"
  MESSAGE_WHEN_NUMBER_IS_BUZZY = "Buzz"

  def message_when_number_is_fizzy
    MESSAGE_WHEN_NUMBER_IS_FIZZY
  end

  def message_when_number_is_buzzy
    MESSAGE_WHEN_NUMBER_IS_BUZZY
  end

  def message_when_default_case(n)
    n.to_s
  end

  def is_fizzy? (n)
    n == 3
  end

  def is_buzzy? (n)
    n == 5
  end

  def is_default_case? (n)
    true
  end

  def say(n)
    return message_when_number_is_fizzy if is_fizzy? n
    return message_when_number_is_buzzy if is_buzzy? n
    return message_when_default_case(n) if is_default_case? n
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
