require_relative 'spec_helper'
require_relative '../challenge'

describe Challenge do
  before :each do
    @challenge = Challenge.new
  end

  describe '#new' do
    it 'should create a new Solver' do
      @challenge.should be_an_instance_of Challenge
    end
  end
  describe '#factorial' do
    it 'takes one argument and returns its factorial' do
      fact = @challenge.factorial(5)
      expect(fact).to eq(120)
    end

    it 'raises exception for negative number' do
      solver = double
      allow(solver).to receive(:factorial).with(-1).and_raise(ArgumentError)
      expect { solver.factorial(-1) }.to raise_error(ArgumentError)
    end
  end

  describe 'reverse method' do
    it 'takes a string and return it reversed' do
      rev = @challenge.reversed('world')

      expect(rev).to eq('dlrow')
    end
  end

  describe 'fizzbuzz method' do
    it 'takes an integer N and returns a string fizz if N is divisible by 3' do
      str = @challenge.fizzbuzz(3)

      expect(str).to eq('fizz')
    end

    it 'takes an integer N and returns a string buzz if N is divisible by 5' do
      str = @challenge.fizzbuzz(5)

      expect(str).to eq('buzz')
    end

    it 'takes an integer N and returns a string fizz if N is divisible by 3 and 5' do
      str = @challenge.fizzbuzz(15)

      expect(str).to eq('fizzbuzz')
    end

    it 'takes an integer N and returns N as a string for other cases' do
      str = @challenge.fizzbuzz(7)

      expect(str).to eq(7)
    end
  end
end
