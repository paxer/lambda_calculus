require "lambda_calculus/version"

module LambdaCalculus
  DIGITS = { zero: 0, one: 1, two: 2, three: 3, four: 4, five: 5, six: 6, seven: 7, eight: 8, nine: 9 }.freeze

  # generates methods like this for all supported digits
  # def zero(operation = nil)
  #   operation ? operation.call(0) : 0
  # end
  # etc...
  DIGITS.each do |name, value|
    define_method name do |operation = nil|
      operation ? operation.call(value) : value
    end
  end

  def times(number)
    proc { |x, y| x * y }.curry.call(number)
  end

  def plus(number)
    proc { |x, y| x + y }.curry.call(number)
  end

  def minus(number)
    proc { |x, y| y - x }.curry.call(number)
  end

  def divided_by(number)
    proc { |x, y| y / x }.curry.call(number)
  end
end
