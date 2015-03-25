require 'board'

describe Board do
  let(:board) { Board.new }
  let(:ship) { double :ship, :hit! => nil }

  it "should have a grid with 9 cells" do
    expect(board.grid.count).to eq 9
  end

  it "can place a ship on a cell with an xy co-ordinate" do
    board.place_ship(ship, :coordinate)
    expect(board.grid[:coordinate]).to eq ship
  end

  it "cannot place a ship on a cell that already contains a ship" do
    board.place_ship(ship, :coordinate)
    expect { board.place_ship(ship, :coordinate) }.to raise_error "There is already a ship on this cell!"
  end

  it "can shoot at a ship on the board" do
    board.place_ship(ship, :coordinate)
    expect(ship).to receive :receive_shot
    board.receive_shot(:coordinate)
  end

  it "knows that it has ships" do
    board.place_ship(ship, :coordinate)
    expect(board).to have_ships
  end

  it "knows that it does not have any ships" do
    expect(board).not_to have_ships
  end

  it "be loser if it doesn't have floating ships" do
    board.place_ship(ship, :coordinate)
    expect(ship).to receive(:floating?)
    expect(board).to be_loser
  end

  it "not be loser if it has floating ships" do
    board.place_ship(ship, :coordinate)
    expect(ship).to receive(:floating?) { true }
    expect(board).not_to be_loser
  end



end
