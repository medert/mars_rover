require 'spec_helper'

describe Rover do
  before(:each) do 
    @plateau = Plateau.new('5 5')
    @rover1 = Rover.new("Rover 1", @plateau)
    @rover1.land('1 2 N')
  end

  describe ".land" do
    it "should return rover object" do
      expect(@rover1.land('1 2 N')).to eq(@rover1)
    end
    it "should define rover's position and facing direction" do
      expect(@rover1.location).to eq('1 2 N')
    end
  end
  
  describe ".move" do
    it "should move " do
      @rover1.move('M')    
      expect(@rover1.location).to eq('1 3 N')
    end

    it "should move return new location" do
      @rover1.move('MRMLM')
      expect(@rover1.location).to eq('2 4 N')
    end
  end
  
end
