class Pest < ApplicationRecord
  has_and_belongs_to_many :plants
end
