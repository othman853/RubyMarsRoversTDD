class Move
  VALID_ORIENTATIONS = ['N', 'S', 'E', 'W']
  attr_accessor :x, :y, :orientation

  def initialize (x, y, orientation)

    unless VALID_ORIENTATIONS.include?(orientation.upcase)
      raise ArgumentError.new('Invalid Orientation')
    end

    @orientation = orientation
  end

  def move_y(by)
  end

  def move_x(by)
  end

  def change_orientation(orientation_movement)
  end

end
