
describe Plateau do
  before(:each) do
    @plateau = Plateau.new(5,5)
  end

  describe '.x_limit' do 
    it "should return x_limit" do
      expect(@plateau.x_limit).to eq(4)
    end
  end

  describe '.y_limit' do 
    it "should return x_limit" do
      expect(@plateau.y_limit).to eq(4)
    end
  end
end