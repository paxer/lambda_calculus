require "lambda_calculus/version"
require "ostruct"

module LambdaCalculus
  DIGITS = [
    OpenStruct.new(name: :zero, value: 0),
    OpenStruct.new(name: :one, value: 1),
    OpenStruct.new(name: :two, value: 2),
    OpenStruct.new(name: :three, value: 3),
    OpenStruct.new(name: :four, value: 4),
    OpenStruct.new(name: :five, value: 5),
    OpenStruct.new(name: :six, value: 6),
    OpenStruct.new(name: :seven, value: 7),
    OpenStruct.new(name: :eight, value: 8),
    OpenStruct.new(name: :nine, value: 9)
  ].freeze

  # generates methods like this for all supported digits
  # def zero(operation = nil)
  #   operation ? operation.call(0) : 0
  # end
  # etc...
  DIGITS.each do |digit|
    define_method digit.name do |operation = nil|
      operation ? operation.call(digit.value) : digit.value
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
