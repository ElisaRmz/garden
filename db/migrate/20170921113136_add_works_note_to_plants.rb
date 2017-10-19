class AddWorksNoteToPlants < ActiveRecord::Migration[5.1]
  def change
    add_column :plants, :works_note, :text
  end
end
