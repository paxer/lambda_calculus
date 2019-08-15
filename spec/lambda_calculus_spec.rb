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
end
