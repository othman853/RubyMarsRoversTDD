require "test/unit"

require_relative "../../main/Position.rb"

class PositionTest < Test::Unit::TestCase

  def test_invalid_orientation_should_cause_argument_error
    assert_raise ArgumentError do
      x = 1
      y = 2
      orientation = 'R'

      move = Position.new(x,y,orientation)
    end
  end

end
