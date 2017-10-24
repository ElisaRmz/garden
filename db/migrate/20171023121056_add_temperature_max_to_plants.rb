class AddTemperatureMaxToPlants < ActiveRecord::Migration[5.1]
  def change
    add_column :plants, :temperature_max, :integer
  end
end
