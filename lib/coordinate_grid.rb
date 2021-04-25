class CoordinateGrid
  def initialize(x,y)
    @x = x
    @y = y
  end

  def current 
    "#{@x} #{@y}"
  end
end