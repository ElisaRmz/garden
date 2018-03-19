class ChangePlantDepthAttributeToInteger < ActiveRecord::Migration[5.1]
  def change
    add_column :plants, :depth, :integer
  end
end
