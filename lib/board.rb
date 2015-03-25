require_relative 'cell'

class Board
  def initialize 
    @grid = Hash[
      :A1, Cell.new, :A2, Cell.new, :A3, Cell.new,
      :B1, Cell.new, :B2, Cell.new, :B3, Cell.new,
      :C1, Cell.new, :C2, Cell.new, :C3, Cell.new]
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