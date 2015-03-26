require 'game'

describe Game do 
  let(:game) { Game.new }

  it "when created it is not ready" do
    expect(game.is_ready).to eq true
  end

  it "When created it is not over" do
    expect(game.is_over).to eq false
  end

  it "when created it has no players" do
    expect(game.players.count).to eq 0
  end

  it "can add the first player" do
    game.add_player(:player)
    expect(game.players.count).to eq 1
  end

end
