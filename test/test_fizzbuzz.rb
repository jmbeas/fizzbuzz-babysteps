require "test/unit"
require "shoulda"

class TranslationRule
  def message
    raise 'This method should be overriden'
  end
end

class FizzRule < TranslationRule
  def message(value)
    "Fizz"
  end
end

class BuzzRule < TranslationRule
  def message(value)
    "Buzz"
  end
end

class DefaultRule < TranslationRule
  def message(value)
    value.to_s
  end
end

class TestFizzbuzz < Test::Unit::TestCase

  def say(n)
    return FizzRule.new.message(n) if n == 3
    return BuzzRule.new.message(n) if n == 5
    DefaultRule.new.message(n)
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
