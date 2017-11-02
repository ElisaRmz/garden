class CreatePlantations < ActiveRecord::Migration[5.1]
  def change
    create_table :plantations do |t|
      t.references :plant, foreign_key: true
      t.references :land, foreign_key: true
    end
  end
end
