class Board

  def initialize(dimension = 3, cell)
    @dimension = dimension
    create_board(dimension, cell)
  end

  def create_board(dimension, cell)
    @grid = {}
      ("A"..(dimension + 64).chr).each do |letter|
      (1..dimension).each do |number|
        grid[letter + number.to_s] = cell.new 
      end
    end
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
