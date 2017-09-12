class AddFamilyToPlant < ActiveRecord::Migration[5.1]
  def change
    add_column :plants, :family, :string
  end
end
