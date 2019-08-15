RSpec.describe LambdaCalculus do
  it 'has a version number' do
    expect(LambdaCalculus::VERSION).not_to be nil
  end

  context 'multiplying' do
    it '6 by 5 must return 30' do
      expect(six(times(five))).to eq(30)
    end
  end

  context 'adding' do
    it '1 to 9 must return 10' do
      expect(one(plus(nine))).to eq(10)
    end
  end

  context 'subtracting' do
    it '6 from 3 must return 3' do
      expect(six(minus(three))).to eq(3)
    end
  end

  context 'dividing' do
    it '8 by 2 must return 4' do
      expect(eight(divided_by(two))).to eq(4)
    end
  end
end
