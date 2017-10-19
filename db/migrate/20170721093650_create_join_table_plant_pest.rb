class CreateJoinTablePlantPest < ActiveRecord::Migration[5.1]
  def change
    create_join_table :plants, :pests do |t|
      t.index [:plant_id, :pest_id]
      t.index [:pest_id, :plant_id]
    end
  end
end
