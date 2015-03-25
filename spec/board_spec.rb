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
    expect(ship).to receive :hit!
    board.shoot_cell(:coordinate)
  end

end
