
  class Plateau
    def initialize(string)
      arr = string.split(' ').map(&:to_i)
      @x_limit = arr[0]
      @y_limit = arr[1]
    end

    def x_limit
      @x_limit
    end

    def y_limit
      @y_limit
    end
  end