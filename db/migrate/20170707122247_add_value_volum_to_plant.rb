class AddValueVolumToPlant < ActiveRecord::Migration[5.1]
  def change
    add_column :plants, :volume, :string
  end
end
