require 'pry'
class Rover 
  include Grid

  def initialize(name,plateau)
    @name = name
    @plateau = plateau
    @position = nil
    @direction = nil
  end

  def name 
    @name
  end

  def location
    "#{position} #{direction}"
  end

  def land(string)
    arr = string.split(' ')
    @position = Position.new(arr[0].to_i,arr[1].to_i)
    @direction = Direction.new(arr[2].to_sym)
    return self
  end

  def move(string)
    arr = string.split('')
    arr.each do |step|
      if step == 'M'
        if x_limit && y_limit
          step_forward
        else
          raise "Out of boundary traversing"
        end
      elsif step == 'L'
        @direction.left
      elsif step == 'R'
        @direction.right
      else
      end
    end
  end

  private 

  def position
    @position.current
  end

  def direction
    @direction.current.to_s.upcase
  end

  def step_forward
    if @direction.current == :n
      @position.y += 1
    elsif @direction.current == :e
      @position.x += 1
    elsif @direction.current == :s
      @position.y -= 1
    elsif @direction.current == :w
      @position.x -= 1
    end
  end

  def x_limit
    @plateau.x_limit >= @position.x && @position.x >= 0
  end 

  def y_limit
    @plateau.y_limit >= @position.y && @position.y >= 0
  end 
end