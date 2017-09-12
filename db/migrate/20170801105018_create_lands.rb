class CreateLands < ActiveRecord::Migration[5.1]
  def change
    create_table :lands do |t|
      t.string :name
    end
  end
end
