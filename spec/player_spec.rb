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

  it "can place ships on the board at a coordinate" do
    expect(own_board).to receive(:place_ship).with(ship, :A1)
    player.place_ship(ship, :A1) 
  end

  it "can receive a shot" do
    expect(own_board).to receive(:hit).with(:A1)
    player.receive_shot(:A1)
  end

  it "knows if he has floating ships" do
    # we need a board with a floating ship
    # we expect to have floating ships
    ship = double :ship, floating?: true
    board = double :board, ships: [ship]
    player = Player.new "Player", board
    expect(player).to have_floating_ships
  end

  it "knows if he has no more floating ships" do
    ship = double :ship, floating?: false
    board = double :board, ships: [ship]
    player = Player.new "Player", board
    expect(player).not_to have_floating_ships
  end

  it "knows if he is the loser" do
    # we need a board with no floating ships
    ship = double :ship, floating?: false
    board = double :board, ships: [ship]
    player = Player.new "Player", board
    expect(player).to be_loser
  end

end














