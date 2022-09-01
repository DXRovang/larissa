class AddMaterialsToPerson < ActiveRecord::Migration[6.1]
  def change
    add_column :people, :materials, :string, array: true, default: []
  end
end
