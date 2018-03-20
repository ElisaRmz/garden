class CreateGroupPests < ActiveRecord::Migration[5.1]
  def change
    create_table :group_pests do |t|
      t.string :name
    end
  end
end
