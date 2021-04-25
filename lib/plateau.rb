
  class Plateau
    def initialize(x,y)
      @x = x
      @y = y
      @plane = Array.new(@x) {Array.new(@x,nil)}
    end

    def plane
      @plane
    end
  end