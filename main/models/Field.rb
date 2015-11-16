class Field

  attr_accessor :name, :x_limit, :y_limit, :robots

  def initialize(name, x_limit, y_limit)
    @name = name
    @x_limit = x_limit
    @y_limit = y_limit
  end

  def add_robot(robot)
  end

  def is_position_free?(x,y)
  end

end
