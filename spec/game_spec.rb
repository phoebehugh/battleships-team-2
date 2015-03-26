require 'game'

describe Game do

	let(:game) { Game.new }

	it "is not ready when created" do
		expect(game).not_to be_ready
	end

end
	