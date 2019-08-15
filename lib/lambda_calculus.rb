require "lambda_calculus/version"

module LambdaCalculus
  def zero(operation = nil)
    operation ? operation.call(0) : 0
  end

  def one(operation = nil)
    operation ? operation.call(1) : 1
  end

  def two(operation = nil)
    operation ? operation.call(2) : 2
  end

  def three(operation = nil)
    operation ? operation.call(3) : 3
  end

  def four(operation = nil)
    operation ? operation.call(4) : 4
  end

  def five(operation = nil)
    operation ? operation.call(5) : 5
  end

  def six(operation = nil)
    operation ? operation.call(6) : 6
  end

  def seven(operation = nil)
    operation ? operation.call(7) : 7
  end

  def eight(operation = nil)
    operation ? operation.call(8) : 8
  end

  def nine(operation = nil)
    operation ? operation.call(9) : 9
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
