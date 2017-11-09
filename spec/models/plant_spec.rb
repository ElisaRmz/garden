require "rails_helper"

describe Plant do
	it 'has plantations' do
		expect(Plant.new).to respond_to :plantations
	end

	describe '#plantations' do
	  it 'returns instances of Plantation' do
	  	plant = Plant.new
	  	plantation = Plantation.new

	  	plant.plantations << plantation
	  	#plantation = plant.plantations.build
	  	expect(plant.plantations).to include plantation
	  end
	end

	it 'has name' do
		expect(Plant.new).to respond_to :name
	end

end