class CreateDiaries < ActiveRecord::Migration[5.1]
  def change
    create_table :diaries do |t|
      t.date :date
      t.string :action
      t.text :observation
    end
  end
end
