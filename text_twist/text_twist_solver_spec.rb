require 'rspec'
 
Dir.glob(File.join(File.dirname(__FILE__), '*.rb')).each do |file|
  require(file) unless file.match(/_spec.rb$/)
end
 
# find all the other words of 3 or more characters
# that we can make from the one specified
describe TextTwistSolver do
  before(:each) do
    @twister  = TextTwist.new(File.read("wordlist.txt"))
    @solution = @twister.results_for("frequency")
  end

  it "should return the an array of words we can make" do
    @solution.length.should == 100
  end
end
