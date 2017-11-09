class Diary < ApplicationRecord
	belongs_to :plantation

	validates :date, presence: true
	validates :plantation, presence: true
end