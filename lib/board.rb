require_relative 'cell'

class Board

  FLOATING_SHIPS = Proc.new { |ship| ship.floating? }

  attr_writer :ships
  attr_reader :ships

  def initialize
    @grid = Hash[
      :A1, Cell.new, :A2, Cell.new, :A3, Cell.new,
      :B1, Cell.new, :B2, Cell.new, :B3, Cell.new,
      :C1, Cell.new, :C2, Cell.new, :C3, Cell.new]
    @ships =[]
  end

  def grid
    @grid
  end

  def place_ship(ship, coordinate)
    raise "There is already a ship on this cell!" if @grid[coordinate] == ship
    @grid[coordinate] = ship
    ships << ship
  end

  def receive_shot(coordinate)
    @grid[coordinate].receive_shot
  end

  def has_ships?
    !ships.empty?
  end

  def loser?
    !ships.any? &FLOATING_SHIPS
  end

end
