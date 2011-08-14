require "test/unit"
require "shoulda"

class FizzRule
  def eval(n)
    n == 3
  end
  def message(n)
    "Fizz"
  end
end

class BuzzRule
  def eval(n)
    n == 5
  end
  def message(n)
    "Buzz"
  end
end

class TestFizzbuzz < Test::Unit::TestCase

  def message_when_default_case(n)
    n.to_s
  end

  def is_default_case? (n)
    true
  end

  def say(n)
    rules = [FizzRule.new,BuzzRule.new]
    return rules[0].message(n) if rules[0].eval(n)
    return rules[1].message(n) if rules[1].eval(n)
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
