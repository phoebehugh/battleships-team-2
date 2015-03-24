class Cell
  attr_accessor :content

  def initialize
    @shot = false
  end

  def shot?
    @shot
  end

  def receive_shot
    raise "Already been shot" if shot?
    @shot = true
    content.hit!
  end
end
