class CreateMaterials < ActiveRecord::Migration[6.1]
  def change
    create_table :materials do |t|
      t.string :title
      t.string :link
      t.string :genre
      t.text :notes

      t.timestamps
    end
  end
end
