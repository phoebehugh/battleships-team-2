require 'ship'

describe Ship do
  it 'should have a length' do
    subject.ship_length = 3
    expect(subject.ship_length).to eq(3) 
  end

end