class AddNotesToPerson < ActiveRecord::Migration[6.1]
  def change
    add_column :people, :notes, :text
  end
end
