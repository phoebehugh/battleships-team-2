class Ship
  attr_accessor :ship_length
  attr_reader :floating, :number_of_hits

  def initialize
    @floating = true
    @number_of_hits = 0
  end

  def hit!
    @number_of_hits += 1
    sunk?
  end

  def sunk?
    @floating = false if (@number_of_hits >= @ship_length)
  end
end