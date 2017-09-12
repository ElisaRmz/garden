class AddNoteToPlant < ActiveRecord::Migration[5.1]
  def change
    add_column :plants, :note, :text
  end
end
