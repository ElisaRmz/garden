class DropLandsPlantsTable < ActiveRecord::Migration[5.1]
  def change
  	drop_table :lands_plants
  end
end
