class AddProjectsToPerson < ActiveRecord::Migration[6.1]
  def change
    add_column :people, :projects, :string, array: true, default: []
  end
end
