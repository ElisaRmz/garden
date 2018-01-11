class AddTaskToDiaries < ActiveRecord::Migration[5.1]
  def change
    add_column :diaries, :task, :string
  end
end
