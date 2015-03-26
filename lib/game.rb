class Game

  attr_accessor :players

  def initialize 
    @players = []
  end

  def ready?
    true
  end

  def over?
    false
  end

end