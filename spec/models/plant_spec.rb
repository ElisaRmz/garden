require "rails_helper"

describe Plant do

	it 'has name' do
		expect(Plant.new).to respond_to :name
	end

	it 'has water' do
		expect(Plant.new).to respond_to :water
	end

	it 'has seed' do
		expect(Plant.new).to respond_to :seed
	end

	describe '#pests' do
		it 'returns instances of Pests' do
			plant = Plant.new
			pest = plant.pests.build
			expect(plant.pests).to include pest
			#plant.pests.include? pest (significado línea anterior)
		end
		it 'has pests' do
			expect(Plant.new).to respond_to :pests
		end
	end

	describe '#families' do
		it 'retuns instances of Families' do
			plant = Plant.new
			family = plant.build_family
			expect(plant.family).to eq family
		end
	  it 'has families' do
	  	expect(Plant.new).to respond_to :family
	  end
	end	

	describe '#plantations' do
	  it 'returns instances of Plantation' do
	  	plant = Plant.new
	  	plantation = Plantation.new

	  	plant.plantations << plantation
	  	#plantation = plant.plantations.build
	  	expect(plant.plantations).to include plantation
	  end
	  it 'has plantations' do
	  	expect(Plant.new).to respond_to :plantations
	  end

	end

	describe '#lands' do
		it 'returns instances of Lands' do
			plant = Plant.new
			land = plant.lands.build

			expect(plant.lands).to include land
		end
		it 'has lands' do
			expect(Plant.new).to respond_to :lands
		end
	end		

end