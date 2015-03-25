require 'player'

describe Player do
  let(:own_board) { double :own_board }
  let(:other_board) { double :other_board }
  let(:player) { Player.new "Player", own_board, other_board }
  let(:ship) { double :ship }

  it "has a name" do
    expect(player.name).to eq "Player"
  end

  it "can place ships on the board at a coordinate" do
    expect(own_board).to receive(:place_ship).with(ship, :A1)
    player.place_ship(ship, :A1) 
  end

  it "can shoot at a board at a coordinate" do
    expect(other_board).to receive(:hit).with(:A1)
    player.hit(:A1)
  end

  xit "knows if he has floating ships" do
    
  end

  xit "knows if he has won or lost" do

  end

end
