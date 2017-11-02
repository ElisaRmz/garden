class Plantation < ApplicationRecord
	belongs_to :plant
	belongs_to :land
	has_many :diaries
end