class AddGroupIdToPests < ActiveRecord::Migration[5.1]
  def change
    add_column :pests, :group_pest_id, :integer
  end
end
