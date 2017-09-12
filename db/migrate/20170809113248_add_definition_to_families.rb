class AddDefinitionToFamilies < ActiveRecord::Migration[5.1]
  def change
    add_column :families, :definition, :text
  end
end
