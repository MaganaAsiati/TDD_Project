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

