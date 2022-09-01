class CreateMemberships < ActiveRecord::Migration[6.1]
  def change
    create_table :memberships do |t|
      t.string :name
      t.integer :price
      t.string :site
      t.integer :phone
      t.string :email
      t.date :due
      t.text :notes

      t.timestamps
    end
  end
end
