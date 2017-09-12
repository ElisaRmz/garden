class CreatePlants < ActiveRecord::Migration[5.1]
  def change
    create_table :plants do |t|
      t.string :name
      t.boolean :edible
      t.text :sun
      t.text :water
      t.integer :diameter
      t.string :height
      t.string :depth
      t.string :positive
      t.string :negative

      t.timestamps
    end
  end
end
