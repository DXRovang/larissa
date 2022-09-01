class CreatePeople < ActiveRecord::Migration[6.1]
  def change
    create_table :people do |t|
      t.string :name
      t.string :address
      t.integer :phone
      t.string :email
      t.string :title
      t.string :agency

      t.timestamps
    end
  end
end
