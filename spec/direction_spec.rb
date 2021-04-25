require 'spec_helper'

describe Direction do 
  before(:each) do
    @direction = Direction.new(:n)
  end
  describe '.current' do
    it "must have a current direction" do
      expect(@direction.current).to eq(:n)
    end
  end

  describe 'left' do
    it "should return a direction on the left" do
      expect(@direction.left).to eq(:w)
      expect(@direction.current).to eq(:e)
    end
  end

  describe 'right' do
    it "should return a direction on the right" do
      expect(@direction.right).to eq(:e)
      expect(@direction.current).to eq(:e)
    end
  end
end
