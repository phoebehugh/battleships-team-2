class Game

	attr_accessor :player_one, :player_two, :turn

	def initialize
		@player_one
		@player_two
		@turn 
	end

	def ready?
		true if (@player_one && @player_two) != nil
	end	

	def over?
	end	

  def add_player player
  	raise "There Are Already Two Players!" if ready?
  	@player_one == nil ? @player_one = player : @player_two = player
  end

  def turn
  	@turn  = @player_one
  end

  def switch_turns
    @turn == @player_one ? @turn = @player_two : @turn = @player_one
  end
end
