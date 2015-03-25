require 'player'

describe Player do
  let(:player) { Player.new }

  it "has a name" do
    player = Player.new("Phoebe")
    expect(player.name).to eq "Phoebe"
  end

  xit "can place ships on the board at a coordinate" do
    place_ship(ship, :a1)
    expect(own_board[:a1].content).to eq ship   
  end

  xit "can shoot at a board at a coordinate" do
    
  end

  xit "knows if he has floating ships" do
    
  end

  xit "knows if he has won or lost" do

  end

end
