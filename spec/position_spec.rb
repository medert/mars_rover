require 'spec_helper'

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