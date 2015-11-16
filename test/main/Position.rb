require "test/unit"

require_relative "../../main/Position.rb"

class PositionTest < Test::Unit::TestCase

  def test_invalid_orientation_should_cause_argument_error
    assert_raise ArgumentError do
      x = 1
      y = 2
      orientation = 'R'

      position = Position.new(x,y,orientation)
    end
  end

  def test_invalid_x_should_cause_argument_error
    assert_raise ArgumentError do
      x = -1
      y = 2
      orientation = 'N'

      position = Position.new(x,y,orientation)
    end
  end

  def test_invalid_y_should_cause_argument_error
    assert_raise ArgumentError do
      x = 1
      y = -2
      orientation = 'N'

      position = Position.new(x,y,orientation)
    end
  end

  def test_should_move_y_from_2_to_1
    x = 1
    y = 2
    orientation = 'N'
    position = Position.new(x,y,orientation)
    expected_y = 1
    move = -1

    position.move_y(move)

    assert_equal(expected_y, position.y)
  end

  def test_should_move_x_from_1_to_0
    x = 1
    y = 2
    orientation = 'N'
    position = Position.new(x,y,orientation)
    expected_x = 0
    move = -1

    position.move_x(move)

    assert_equal(expected_x, position.x)
  end

  def test_turn_to_R_should_cause_argument_error
    x = 1
    y = 2
    orientation = 'N'
    position = Position.new(x,y,orientation)
    invalid_orientation = 'R'

    assert_raise ArgumentError do
      position.turn_to(invalid_orientation)
    end
  end
end
