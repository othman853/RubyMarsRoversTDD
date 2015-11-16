class Position

  VALID_ORIENTATIONS = ['N', 'S', 'E', 'W']
  attr_accessor :x, :y, :orientation

  def initialize (x, y, orientation)

    unless VALID_ORIENTATIONS.include?(orientation.upcase)
      raise ArgumentError.new('Invalid Orientation')
    end

    raise ArgumentError.new('Invalid X position') unless x >= 0
    raise ArgumentError.new('Invalid Y position') unless y >= 0

    @x = x
    @y = y
    @orientation = orientation
  end

  def move_y(by)
    @y = @y + by
  end

  def move_x(by)
    @x = @x + by
  end

  def turn_to(orientation)

    unless VALID_ORIENTATIONS.include?(orientation.upcase)
      raise ArgumentError.new('Invalid Orientation')
    end

    @orientation = orientation.upcase
  end

end
