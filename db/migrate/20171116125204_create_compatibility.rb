class CreateCompatibility < ActiveRecord::Migration[5.1]
  def change
    create_table :compatibilities do |t|
      t.references :plant, foreign_key: true
      t.text :explanation
      t.string :compatibility
    end
  end
end
