class Land < ApplicationRecord
	has_many :plantations
	has_many :plants, through: :plantations
end