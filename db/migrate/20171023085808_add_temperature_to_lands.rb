class AddTemperatureToLands < ActiveRecord::Migration[5.1]
  def change
    add_column :lands, :temperature, :text
  end
end
