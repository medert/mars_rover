require 'spec_helper'

describe Rover do
  before(:each) do 
    @rover1 = Rover.new("Rover 1")
    @rover1.land('1 2 N')
  end

  describe ".land" do
    it "should define rover's position and facing direction" do
      expect(@rover1.position).to eq('1 2')
      expect(@rover1.direction).to eq('N')
    end
  end
  
  describe ".move" do
    it "should move " do
      @rover1.move('M')    
      expect(@rover1.position).to eq('1 3')
      expect(@rover1.location).to eq('1 3 N')
    end

    it "should move return new location" do
      @rover1.move('MRMLM')    
      expect(@rover1.position).to eq('2 4')
      expect(@rover1.location).to eq('2 4 N')
    end
  end
  
end
