require 'spec_helper'

describe CoordinateGrid do
  before (:each) do 
    @direction = Direction.new(:n)
    @position = CoordinateGrid.new(1,2)
  end

  describe 'current' do
    it "should return coordinates of current position" do
      expect(@position.current).to eq('1 2')
    end
  end
end