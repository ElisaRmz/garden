class ChangeSeedToTestInPlants < ActiveRecord::Migration[5.1]
  def change
    change_column :plants, :seed, :text
  end
end
