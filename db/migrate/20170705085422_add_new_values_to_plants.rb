class AddNewValuesToPlants < ActiveRecord::Migration[5.1]
  def change
    add_column :plants, :seed, :string
    add_column :plants, :grow, :text
    add_column :plants, :harvest, :text
  end
end
