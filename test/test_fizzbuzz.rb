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

class DefaultRule
  def eval(n)
    true
  end
  def message(n)
    n.to_s
  end
end

class TestFizzbuzz < Test::Unit::TestCase

  def say(n)
    rules = [FizzRule.new,BuzzRule.new,DefaultRule.new]
    rules.each do |rule|
      return rule.message(n) if rule.eval(n)
    end
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
