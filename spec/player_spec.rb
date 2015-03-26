require 'player'

describe Player do
  let(:own_board) { double :own_board }
  let(:player) { Player.new "Player", own_board}
  let(:ship) { double :ship }

  it "has a name" do
    expect(player.name).to eq "Player"
  end

  it "has a board" do
    expect(player.name).to eq "Player"
  end

  it "can receive a shot" do
    expect(own_board).to receive(:hit).with(:A1)
    player.receive_shot(:A1)
  end

  it "can place ships on the board at a coordinate" do
    expect(own_board).to receive(:place_ship).with(ship, :coordinate)
    player.place_ship(ship, :coordinate)
  end

  it "can receive a shot a coordinate" do
    expect(own_board).to receive(:receive_shot).with(:coordinate)
    player.receive_shot(:coordinate)
  end

  it "knows if he has floating ships" do
    expect(own_board).to receive(:place_ship).with(ship, :coordinate)
    expect(own_board).to receive(:has_ships?) { true }
    player.place_ship(ship, :coordinate)
    expect(player.own_board).to have_ships
  end

  it "knows if he has lost" do
    expect(own_board).to receive(:loser?) { true }
    expect(own_board).to be_loser
  end

  it "knows if he has won" do 
    expect(own_board).to receive(:loser?) { false }
    expect(own_board).not_to be_loser
  end

end
