class Ship
  attr_accessor :ship_length
  attr_reader :is_it_hit

  def initialize
    @is_it_hit = false
  end

  def floating?
    true
  end

  def hit!
    @is_it_hit = true
  end
end