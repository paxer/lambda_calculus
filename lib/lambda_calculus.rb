require "lambda_calculus/version"

module LambdaCalculus
  def self.five(operation = nil)
    operation ? operation.call(5) : 5
  end

  def self.six(operation = nil)
    operation ? operation.call(6) : 6
  end

  def self.times(number)
    proc { |x, y| x * y }.curry.call(number)
  end
end
