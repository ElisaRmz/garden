class AddTemperatureMinToPlants < ActiveRecord::Migration[5.1]
  def change
    add_column :plants, :temperature_min, :integer
  end
end
