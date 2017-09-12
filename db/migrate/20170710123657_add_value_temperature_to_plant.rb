class AddValueTemperatureToPlant < ActiveRecord::Migration[5.1]
  def change
    add_column :plants, :temperature, :string
  end
end
