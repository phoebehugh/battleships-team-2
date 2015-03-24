require 'ship'

describe Ship do

  let(:ship) { Ship.new(3) }

  it 'should have a length when created' do
    expect(ship.ship_length).to eq(3) 
  end

  it 'should be floating when created' do
    expect(ship.floating?).to be true
  end

  it 'can be hit' do
    expect(ship).to respond_to(:hit!)
  end

  it 'knows how many hits it can take' do
    ship.hit!
    # the length is the number of hits a ship can take.
    expect(ship.hits_left).to eq 2
  end

  it 'knows how many hits it can take' do
    ship.hit!
    ship.hit!
    # the length is the number of hits a ship can take.
    expect(ship.hits_left).to eq 1
  end

  it 'is not floating if it has no more hits left' do
    (ship.ship_length).times { ship.hit! }
    expect(ship.floating?).to eq false
  end

end