class CreateJoinTablePlantLand < ActiveRecord::Migration[5.1]
  def change
    create_join_table :plants, :lands do |t|
      t.index [:plant_id, :land_id]
      t.index [:land_id, :plant_id]
    end
  end
end
