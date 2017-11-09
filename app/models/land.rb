class Land < ApplicationRecord
	has_many :plantations
	has_many :plants, through: :plantations
	has_many :diaries, through: :plantations
end