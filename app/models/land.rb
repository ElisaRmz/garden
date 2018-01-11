class Land < ApplicationRecord
	has_many :plantations
	has_many :plants, through: :plantations
	has_many :diaries, through: :plantations

  def plants_with_diaries
    # numero de Plantation que tiene Land, utilizar .map y .count
  end

end