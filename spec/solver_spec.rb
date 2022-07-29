describe Solver do
  before :each do
    @solver = Solver.new
  end 

  describe "#new" do
    it "should create a new Solver" do
      @solver.should be_an_instance_of Solver
    end
