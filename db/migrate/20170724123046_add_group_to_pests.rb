class AddGroupToPests < ActiveRecord::Migration[5.1]
  def change
    add_column :pests, :group, :string
  end
end
