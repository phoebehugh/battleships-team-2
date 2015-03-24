class Ship
  attr_reader :floating, :number_of_hits, :ship_length

  def initialize (ship_length = 2)
    @floating = true
    @number_of_hits = 0
    @ship_length = ship_length
  end

  def hit!
    @number_of_hits += 1
    sunk?
  end

  def sunk?
    @floating = false if (@number_of_hits >= @ship_length)
  end
end