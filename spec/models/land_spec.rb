require 'rails_helper'

describe Land do

  it 'has name' do
    expect(Land.new).to respond_to :name
  end

  it 'has temperature' do
    expect(Land.new).to respond_to :temperature
  end

  describe '#plantations' do
    it 'returns instances of Plantation' do
      land = Land.new
      plantation = land.plantations.build
      expect(land.plantations).to include plantation
    end
    it 'has plantations' do
      expect(Land.new).to respond_to :plantations
    end
  end
  
  describe '#Plant' do
    it 'returns instances of Plant' do
      land = Land.new
      plant = land.plants.build
      expect(land.plants).to include plant
    end
    it 'has plants' do
      expect(Land.new).to respond_to :plants
    end
  end

  describe '#Diary' do
    it 'returns instances of Diary' do
      land = Land.new
      diary = land.diaries.build
      expect(land.diaries).to include diary
    end
    it 'has diaries' do
      expect(Land.new).to respond_to :diaries
    end
  end
  
end