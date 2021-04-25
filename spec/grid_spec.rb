require 'spec_helper'
include Grid

describe Position do
  before (:each) do 
    @position = Position.new(1,2)
  end

  describe 'current' do
    it "should return Grid of current position" do
      expect(@position.current).to eq('1 2')
    end
  end
end

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
      expect(@direction.current).to eq(:w)
    end
  end

  describe 'right' do
    it "should return a direction on the right" do
      expect(@direction.right).to eq(:e)
      expect(@direction.current).to eq(:e)
    end
  end
end