class CreatePests < ActiveRecord::Migration[5.1]
  def change
    create_table :pests do |t|
      t.string :name
      t.text :damage
      t.text :beat

      t.timestamps
    end
  end
end
