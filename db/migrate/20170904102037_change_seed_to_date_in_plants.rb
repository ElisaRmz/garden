class ChangeSeedToDateInPlants < ActiveRecord::Migration[5.1]
  def change
    change_column :plants, :seed, :date
  end
end
