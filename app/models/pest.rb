class Pest < ApplicationRecord
  has_and_belongs_to_many :plants
  belongs_to :group_pest
end
