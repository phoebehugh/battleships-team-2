require 'cell'

describe Cell do

  let(:cell) { Cell.new }
  let(:cell_with_content) { Cell.new }
  let(:frigate) { double :frigate }

  before do 
    cell_with_content.content = frigate
  end

  it 'is not shot when created' do
    expect(cell.shot?).to be false
    expect(cell).not_to be_shot
  end

  it 'can have content' do
    cell.content = frigate
    expect(cell.content).to eq frigate
  end

  it 'can be shot at' do
    expect(cell).to respond_to :receive_shot
  end

  it 'shoots at its content when shot at' do
    expect(frigate).to receive :hit!
    cell_with_content.receive_shot
  end

  it 'knows that it was shot at' do
    allow(frigate).to receive(:hit!)
    cell_with_content.receive_shot
    expect(cell_with_content).to be_shot
  end

  it 'cannot be shot twice' do
    allow(frigate).to receive :hit!
    cell_with_content.receive_shot
    expect { cell_with_content.receive_shot }.to raise_error 'Already been shot'
  end

end
