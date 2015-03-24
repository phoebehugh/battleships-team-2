require 'ship'

describe Ship do
  it 'should have a length' do
    subject.ship_length = 3
    expect(subject.ship_length).to eq(3) 
  end

  it 'should be floating when created' do
    expect(subject.floating?).to be true
  end

end