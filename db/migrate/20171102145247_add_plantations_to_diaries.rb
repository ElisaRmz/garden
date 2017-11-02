class AddPlantationsToDiaries < ActiveRecord::Migration[5.1]
  def change
    add_reference :diaries, :plantation, foreign_key: true
  end
end
