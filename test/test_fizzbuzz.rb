require "test/unit"
require "shoulda"

class SimpleRule
  def initialize(divisor,message)
    @divisor = divisor
    @message = message
  end
  def eval(n)
    n % @divisor == 0
  end
  def message(n)
    @message
  end
end
class FizzRule < SimpleRule
  def initialize
    super(3,"Fizz")
  end
end

class BuzzRule
  def eval(n)
    n % 5 == 0
  end
  def message(n)
    "Buzz"
  end
end

class CompositionRule
  def initialize(rules)
    @rules = rules
  end
  def eval(n)
    @rules.inject(true) {|result,rule| result and rule.eval(n)}
  end
  def message(n)
    @rules.inject("") {|result,rule| result += rule.message(n)}
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

class FizzBuzz
  def initialize(rules)
    @rules = rules
  end
  def say(n)
    @rules.each do |rule|
      return rule.message(n) if rule.eval(n)
    end
  end
end

class TestFizzbuzz < Test::Unit::TestCase

  def setup
    rules = [CompositionRule.new([FizzRule.new,BuzzRule.new]),FizzRule.new,BuzzRule.new,DefaultRule.new]
    @fizzbuzz = FizzBuzz.new(rules)
  end

  def say(n)
    @fizzbuzz.say(n)
  end

  should "say Fizz for multiples of 3" do
    assert_equal "Fizz", say(3)
    assert_equal "Fizz", say(6)
  end

  should "say Buzz for multiples of 5" do
    assert_equal "Buzz", say(5)
    assert_equal "Buzz", say(10)
  end

  should "say FizzBuzz for multiples of 3 and 5" do
    assert_equal "FizzBuzz", say(15)
    assert_equal "FizzBuzz", say(30)
  end

  should "say the number for any other case (default rule)" do
    assert_equal "1", say(1)
    assert_equal "2", say(2)
    assert_equal "4", say(4)
  end

end
