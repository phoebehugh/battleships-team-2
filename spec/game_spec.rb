require 'game'

describe Game do 
  let(:game) { Game.new }

  it "when created it is not ready" do
    expect(game).to be_ready
  end

  it "When created it is not over" do
    expect(game.over?).to eq false
  end

  it "when created it has no players" do
    expect(game.players.count).to eq 0
  end

end