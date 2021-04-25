
describe Plateau do
  before(:each) do
    @plateau = Plateau.new(5,5)
  end

  describe 'size' do 
    it "should return the area of plateau" do
      expect(@plateau.plane).to be_an_instance_of(Array)
    end
  end
end