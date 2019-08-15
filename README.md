# LambdaCalculus

## Let’s get functional, functional.

We want to write calculations using functions and get the results.

```ruby
six(times(five)) # must return 30
one(plus(nine)) # must return 10
six(minus(three)) # must return 3
eight(divided_by(two)) # must return 4
```

## Requirements

* There must be a function for each number from 0 (“zero”) to 9 (“nine”)
* There must be a function for each of the following mathematical operations: plus, minus, times, divided_by
* Each calculation consist of exactly one operation and two numbers
* The most outer function represents the left operand, the most inner function represents the right operand

## Installation

#### Note: this gem was not published to RubyGems and exists only in this repository as it was done for learning and fun purposes. 

```ruby
gem 'lambda_calculus', git: 'https://github.com/paxer/lambda_calculus'
```

And then execute:

    $ bundle

## Usage

Use directly via 
```ruby
LambdaCalculus.six(LambdaCalculus.times(LambdaCalculus.five))
```

or

```ruby
class MyClass
  extend LambdaCalculus
  
  def my_method
    six(times(five)) 
  end
end
```


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/paxer/lambda_calculus.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
