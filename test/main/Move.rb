require "test/unit"

require_relative "../../main/Move.rb"

class MoveTest < Test::Unit::TestCase

  def test_argument_error_should_be_thrown_with_wrong_orientation
    assert_raise ArgumentError do
      x = 1
      y = 2
      orientation = 'R'

      move = Move.new(x,y,orientation)
    end
  end

end
