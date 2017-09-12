class AddTallnessToPlant < ActiveRecord::Migration[5.1]
  def change
    add_column :plants, :tallness, :integer
  end
end
