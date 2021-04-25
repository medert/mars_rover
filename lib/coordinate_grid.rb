module Grid
  class CoordinateGrid
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