RSpec.describe LambdaCalculus do
  it 'has a version number' do
    expect(LambdaCalculus::VERSION).not_to be nil
  end

  it 'multiplying 6 by 5' do
    expect(LambdaCalculus.six(LambdaCalculus.times(LambdaCalculus.five))).to eq(30)
  end
end
