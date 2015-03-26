class Game

  attr_reader :is_ready, :is_over
  attr_accessor :players

  def initialize
    @players = []
    @is_ready = true
    @is_over = false
  end

  def add_player(player)
    @players << player
  end

end
