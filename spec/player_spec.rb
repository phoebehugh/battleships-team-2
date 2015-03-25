require 'player'

describe Player do
  let(:board) { double :board }
  let(:player) { Player.new "Phoebe", board }
  let(:ship) { double :ship }

  it "has a name" do
    expect(player.name).to eq "Phoebe"
  end

  it "can place ships on the board at a coordinate" do
    expect(board).to receive(:place_ship).with(ship, :A1)
    player.place_ship(ship, :A1) 
  end

  xit "can shoot at a board at a coordinate" do
    
  end

  xit "knows if he has floating ships" do
    
  end

  xit "knows if he has won or lost" do

  end

end
