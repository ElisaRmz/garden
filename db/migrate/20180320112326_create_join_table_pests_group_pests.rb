class CreateJoinTablePestsGroupPests < ActiveRecord::Migration[5.1]
  def change
    create_join_table :pests, :group_pests do |t|
      t.index [:pest_id, :group_pest_id]
      t.index [:group_pest_id, :pest_id] 
    end
  end
end
