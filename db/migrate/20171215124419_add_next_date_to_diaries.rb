class AddNextDateToDiaries < ActiveRecord::Migration[5.1]
  def change
    add_column :diaries, :next_date, :date
  end
end
