class Board
  def initialize 
    @grid = Hash[
      :A1, "water", :A2, "water", :A3, "water",
      :B1, "water", :B2, "water", :B3, "water",
      :C1, "water", :C2, "water", :C3, "water"]
  end

  def grid
    @grid
  end

  def place_ship(ship, coordinate)
    raise "There is already a ship on this cell!" if @grid[coordinate] == ship
    @grid[coordinate] = ship
  end

  def shoot_cell(coordinate)
    @grid[coordinate].hit!
  end

end