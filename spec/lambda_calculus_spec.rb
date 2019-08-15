RSpec.describe LambdaCalculus do
  it 'has a version number' do
    expect(LambdaCalculus::VERSION).not_to be nil
  end

  context 'multiplying' do
    it '6 by 5 must return 30' do
      expect(six(times(five))).to eq(30)
    end

    it '1 by 1 must return 2' do
      expect(one(times(one))).to eq(1)
    end

    it '3 by 0 must return 0' do
      expect(three(times(zero))).to eq(0)
    end
  end

  context 'adding' do
    it '1 to 9 must return 10' do
      expect(one(plus(nine))).to eq(10)
    end

    it '3 to 9 must return 12' do
      expect(three(plus(nine))).to eq(12)
    end

    it '7 to 1 must return 12' do
      expect(seven(plus(one))).to eq(8)
    end
  end

  context 'subtracting' do
    it '6 from 3 must return 3' do
      expect(six(minus(three))).to eq(3)
    end

    it '5 from 6 must return -1' do
      expect(five(minus(six))).to eq(-1)
    end

    it '9 from 1 must return 8' do
      expect(nine(minus(one))).to eq(8)
    end
  end

  context 'dividing' do
    it '8 by 2 must return 4' do
      expect(eight(divided_by(two))).to eq(4)
    end

    it '9 by 3 must return 3' do
      expect(nine(divided_by(three))).to eq(3)
    end

    it '1 by 0 raise an exception' do
      expect { one(divided_by(zero)) }.to raise_error(ZeroDivisionError)
    end
  end
end
