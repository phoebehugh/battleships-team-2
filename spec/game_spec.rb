require 'game'

describe Game do

	let(:game) { Game.new }
	let(:player) { double :player }
	let(:game_with_two_players) { double :game, :player_one => player, :player_two => player }

	it "is not ready when created" do
		expect(game).not_to be_ready
	end

	it "is not over when created" do 
		expect(game).not_to be_over
	end	

	it "has no players when created" do
	  expect(game.player_one && game.player_two).to eq nil  
	end	

	it "can add the first player" do
		game.add_player(:player_one)
		expect(game.player_one).to eq :player_one
	end

	it "can add the second player" do
		game.add_player(:player_one)
		game.add_player(:player_two)
		expect(game.player_two).to eq :player_two
	end

	it "knows when it is full" do
		game.add_player(:player_one)
		game.add_player(:player_two)
		expect(game).to be_ready
	end

	it "cannot add another player if it has two players" do
		expect { 
			
			game.add_player(:player_one)
		  game.add_player(:player_two)
      game.add_player(:player_three)
		  
		  }.to raise_error "There Are Already Two Players!"
	end

	it "knows that the first player has the first turn" do
		expect(game_with_two_players.turn).to eq :player_one
	end

	it "can switch turns" do
		game_with_two_players.switch_turns
		expect(game_with_two_players.turn).to eq :player_two
	end

	xit "knows who the opponent is" do
		expect(game_with_two_players.opponent).to eq :player_two
	end

	xit "counter test for -> knows who the opponent is" do
	end

	xit "can fire a shot at opponent" do
		# given we have a game with two players
		# we need doubles for players
		# when the game fires a shot at a coordinate
		# we want that the opponent to receive :receive_shot with that coordinate
	end

end
	