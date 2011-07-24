class FizzBuzz
  def self.fizzy?(n)
    n % 3 == 0
  end
  def self.buzzy?(n)
    n % 5 == 0
  end
  def self.sayFizzWhenFizzy(n)
    return "Fizz" if fizzy? n
    ""
  end
  def self.sayBuzzWhenBuzzy(n)
    return "Buzz" if buzzy? n
    ""
  end
  def self.sayNumber(n)
    return n.to_s
  end
  def self.say(n)
    result = ""
    result = sayFizzWhenFizzy(n) + sayBuzzWhenBuzzy(n)
    result = sayNumber(n) if result == ""
    result
  end
end
