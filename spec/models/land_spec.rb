require 'rails_helper'

describe Land do

  describe '#plantations' do
    it 'has plantations' do
      expect(Land.new).to respond_to :plantations
    end
  end
  
end