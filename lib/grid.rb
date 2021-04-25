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

  class Direction 
    FACINGS = [:n,:e,:s,:w]

    def initialize(current)
      @current = current.downcase
    end

    def current 
      @current
    end

    def left
      current = FACINGS.find_index(@current)
      current -= 1
      current %= 4
      @current = FACINGS[current]
    end

    def right
      current = FACINGS.find_index(@current)
      current += 1
      current %= 4
      @current = FACINGS[current]
    end

  end
end