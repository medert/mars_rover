module Grid
  class Position
    attr_accessor :x, :y
    def initialize(x,y)
      @x = x
      @y = y
    end

    def current 
      "#{@x} #{@y}"
    end
  end
end