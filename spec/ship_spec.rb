require 'ship'

describe Ship do
  ship = (Ship.new(3))
  it 'should have a length when created' do
    expect(ship.ship_length).to eq(3) 
  end

  it 'should be floating when created' do
    expect(ship.floating).to be true
  end

  it 'can be hit' do
    ship.hit!
    expect(ship.number_of_hits).to eq 1
  end

  xit 'knows how many hits it can take' do
    # the length is the number of hits a ship can take.
    expect(ship.whatever).to eq (subject.ship_length)
  end

  it 'is not floating if it has no more hits left' do
    (ship.ship_length).times { ship.hit! }
    expect(ship.floating).to eq false
  end

end