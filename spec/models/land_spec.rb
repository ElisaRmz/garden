require 'rails_helper'

describe Land do

  it 'has name' do
    expect(Land.new).to respond_to :name
  end

  describe '#plantations' do
    it 'returns instances of Plantation' do
      plant = Plant.new
      plantation = plant.plantations.build
      expect(plant.plantations).to include plantation
    end
    it 'has plantations' do
      expect(Land.new).to respond_to :plantations
    end
  end
  
end