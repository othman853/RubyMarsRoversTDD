class Move

  VALID_MOVES = ['L', 'R', 'M']
  attr_accessor :commands

  def initialize(commands)
    @commands = commands
  end

end
