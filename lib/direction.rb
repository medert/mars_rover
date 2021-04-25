class Direction 
  FACINGS = [:n,:e,:s,:w]

  def initialize(current)
    @current = current
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