class Player

  attr_reader :name, :own_board, :other_board
  attr_writer :name

  def initialize name, own_board, other_board
    @name = name
    @own_board = own_board
    @other_board = other_board
  end

  def place_ship(ship, coordinate)
    own_board.place_ship(ship, coordinate)
  end

  def hit(coordinate)
    other_board.hit(coordinate)
  end 

end
