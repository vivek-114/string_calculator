require 'string_calculator'

RSpec.describe StringCalculator do
  describe '.add' do
    it 'returns 0 for an empty string' do
      expect(StringCalculator.add("")).to eq(0)
    end

    it 'returns the number for a single number' do
      expect(StringCalculator.add("1")).to eq(1)
    end

    it 'returns the sum of two numbers' do
      expect(StringCalculator.add("1,2")).to eq(3)
    end

    it 'returns the sum of multiple numbers' do
      expect(StringCalculator.add("1,2,3,4,5")).to eq(15)
    end

    it 'handles new lines between numbers' do
      expect(StringCalculator.add("1\n2,3")).to eq(6)
    end

    it 'supports different delimiters' do
      expect(StringCalculator.add("//;\n1;2")).to eq(3)
      expect(StringCalculator.add("//*\n1*2*3")).to eq(6)
    end

    it 'ignores numbers bigger than 1000' do
      expect(StringCalculator.add("2,1001")).to eq(2)
      expect(StringCalculator.add("1000,2")).to eq(1002)
    end
  end
end