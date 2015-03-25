class Player

  attr_reader :name, :own_board
  attr_writer :name

  def initialize name, board
    @name = name
    @own_board = board
  end

  def place_ship(ship, coordinate)
    own_board.place_ship(ship, coordinate)
  end

end

class Board
  def place_ship(ship_type, at_coordinate)
    puts "ship placed at #{at_coordinate}"
  end
end