class AddJobToPerson < ActiveRecord::Migration[6.1]
  def change
    add_column :people, :job_id, :integer
  end
end
