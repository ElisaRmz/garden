class Plant < ApplicationRecord
  has_and_belongs_to_many :pests
  belongs_to :family
  has_many :plantations
  has_many :lands, through: :plantations
  has_many :plants

  validates :name, presence: true, uniqueness: true
  
end
