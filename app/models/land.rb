class Land < ApplicationRecord
  has_and_belongs_to_many :plants
end