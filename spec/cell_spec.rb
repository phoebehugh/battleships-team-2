require 'cell'

describe Cell do

  let(:cell) { Cell.new }
  let(:frigate) { double :ship }

  it 'is not shot when created' do
    expect(cell).not_to be_shot
  end

  it 'can have content' do
    cell.add_content(frigate)
    expect(cell.contents).to eq frigate
  end

  it 'can be shot at' do
    expect(cell).to respond_to :fire_shot
  end

  it 'shoots at its content when shot at' do
    cell.add_content(frigate)
    expect(frigate).to receive :hit!
    cell.fire_shot
  end

  it 'knows that it was shot at' do
    cell.add_content(frigate)
    allow(frigate).to receive :hit!
    cell.fire_shot
    expect(cell).to be_shot
  end

  it 'cannot be shot twice' do
    cell.add_content(frigate)
    allow(frigate).to receive :hit!
    cell.fire_shot
    expect { cell.fire_shot }.to raise_error 'Already been shot'
  end

end
