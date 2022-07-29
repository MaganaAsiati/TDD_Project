describe Solver do
  before :each do
    @solver = Solver.new
  end 

  describe "#new" do
    it "should create a new Solver" do
      @solver.should be_an_instance_of Solver
    end
end
describe "#factorial" do
it 'takes one argument and returns its factorial' do
  fact = @solver.factorial(5)
  expect(fact).to eq(6)
end
it 'raises exception for negative number' do
  expect { @solver.factorial(-5) }.to raise_exception
end
end

describe 'reverse method' do
  it 'takes a string and return it reversed' do
    rev = @solver.reversed('world')

    expect(rev).to eq(rev)
  end
end

describe 'fizzbuzz method' do
  it 'takes an integer N and returns a string fizz if N is divisible by 3' do
    str = @solver.fizzbuzz(3)

    expect(str).to eq('fizz')
  end

  it 'takes an integer N and returns a string buzz if N is divisible by 5' do
    str = @solver.fizzbuzz(5)

    expect(str).to eq('buzz')
  end

  it 'takes an integer N and returns a string fizz if N is divisible by 3 and 5' do
    str = @solver.fizzbuzz(15)

    expect(str).to eq('fizzbuzz')
  end

  it 'takes an integer N and returns N as a string for other cases' do
    str = @solver.fizzbuzz(7)

    expect(str).to eq('7')
  end
end
end
