class Plant < ApplicationRecord
  has_and_belongs_to_many :pests
  belongs_to :family
  has_many :plantations
  has_many :lands, through: :plantations
  
  enum depth: [ 
    :desconocido, 
    :capa_de_altura, 
    :capa_de_raiz, 
    :capa_de_cobertura
  ]

  validates :name, presence: true, uniqueness: true
  
  def self.humanized_depths
    depths.transform_keys { |key| key.humanize }
  end

end
