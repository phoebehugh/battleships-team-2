require_relative 'board'
require_relative 'cell'
require_relative 'ship'
require_relative 'water'

class Player

  attr_reader :name, :own_board
  attr_writer :name

  def initialize name, own_board
    @name = name
    @own_board = own_board
  end

  def place_ship(ship, coordinate)
    own_board.place_ship(ship, coordinate)
  end

  def receive_shot(coordinate)
    own_board.receive_shot(coordinate)
  end

end
