require 'ship'

describe Ship do
  it 'should have a length' do
    subject.ship_length = 3
    expect(subject.ship_length).to eq(3) 
  end

  it 'should be floating when created' do
    expect(subject.floating).to be true
  end

  it 'can be hit' do
    subject.ship_length = 3
    subject.hit!
    expect(subject.number_of_hits).to eq 1
  end

  xit 'knows how many hits it can take' do
    # the length is the number of hits a ship can take.
    expect(subject.whatever).to eq (subject.ship_length)
  end

  it 'is not floating if it has no more hits left' do
    subject.ship_length = 3
    (subject.ship_length).times { subject.hit! }
    expect(subject.floating).to eq false
  end

end