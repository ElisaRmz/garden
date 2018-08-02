require "rails_helper"

RSpec.describe Plant do
	describe '.depths' do
		it 'returns the available depths' do
			expect(Plant.depths).to eq %i(desconocido capa_de_altura capa_de_raiz capa_de_cobertura)
		end
	end
end