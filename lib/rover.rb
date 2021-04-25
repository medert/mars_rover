require 'pry'
class Rover 
  include Grid

  def initialize(name)
    @name = name
    @position = nil
    @direction = nil
  end

  def name 
    @name
  end

  def position
    @position.current
  end

  def direction
    @direction.current.to_s.upcase
  end

  def location
    "#{position} #{direction}"
  end

  def land(string)
    arr = string.split(' ')
    @position = Position.new(arr[0].to_i,arr[1].to_i)
    @direction = Direction.new(arr[2].to_sym)
    return true
  end

  def move(string)
    arr = string.split('')
    arr.each do |step|
      if step == 'M'
        if @direction.current == :n
          @position.y += 1
        elsif @direction.current == :e
          @position.x += 1
        elsif @direction.current == :s
          @position.y -= 1
        elsif @direction.current == :w
          @position.x += 1
        end
      elsif step == 'L'
        @direction.left
      elsif step == 'R'
        @direction.right
      else
      end
    end
  end
end