class ChangePlantDepthAttributeToIntegerWithDefaultValue < ActiveRecord::Migration[5.2]
  def change
   change_column :plants, :depth, :integer, default: 0
  end
end
