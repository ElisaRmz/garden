class Plant < ApplicationRecord
  has_and_belongs_to_many :pests
  has_and_belongs_to_many :lands
   belongs_to :family

  validates :name, presence: true, uniqueness: true
end
