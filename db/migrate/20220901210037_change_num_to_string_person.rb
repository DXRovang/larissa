class ChangeNumToStringPerson < ActiveRecord::Migration[6.1]
  def change
    change_column :people, :phone, :string
  end
end
