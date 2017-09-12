class RemoveFamilyFromPlants < ActiveRecord::Migration[5.1]
  def change
    remove_column :plants, :family, :string
  end
end
