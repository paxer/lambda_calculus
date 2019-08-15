require "lambda_calculus/version"

module LambdaCalculus
  def self.one(operation = nil)
    operation ? operation.call(1) : 1
  end

  def self.two(operation = nil)
    operation ? operation.call(2) : 2
  end

  def self.three(operation = nil)
    operation ? operation.call(3) : 3
  end

  def self.nine(operation = nil)
    operation ? operation.call(9) : 9
  end

  def self.five(operation = nil)
    operation ? operation.call(5) : 5
  end

  def self.six(operation = nil)
    operation ? operation.call(6) : 6
  end

  def self.eight(operation = nil)
    operation ? operation.call(8) : 8
  end

  def self.times(number)
    proc { |x, y| x * y }.curry.call(number)
  end

  def self.plus(number)
    proc { |x, y| x + y }.curry.call(number)
  end

  def self.minus(number)
    proc { |x, y| y - x }.curry.call(number)
  end

  def self.divided_by(number)
    proc { |x, y| y / x }.curry.call(number)
  end
end
