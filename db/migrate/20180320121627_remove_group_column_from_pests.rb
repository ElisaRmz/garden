class RemoveGroupColumnFromPests < ActiveRecord::Migration[5.1]
  def change
    remove_column :pests, :group, :string
  end
end
