RSpec.describe LambdaCalculus do
  it 'has a version number' do
    expect(LambdaCalculus::VERSION).not_to be nil
  end

  it 'multiplying 6 by 5 must return 30' do
    expect(LambdaCalculus.six(LambdaCalculus.times(LambdaCalculus.five))).to eq(30)
  end

  it 'adding 1 to 9 must return 10' do
    expect(LambdaCalculus.one(LambdaCalculus.plus(LambdaCalculus.nine))).to eq(10)
  end

  it 'subtracting 6 from 3 must return 3' do
    expect(LambdaCalculus.six(LambdaCalculus.minus(LambdaCalculus.three))).to eq(3)
  end

  it 'dividing 8 by 2 must return 4' do
    expect(LambdaCalculus.eight(LambdaCalculus.divided_by(LambdaCalculus.two))).to eq(4)
  end
end
