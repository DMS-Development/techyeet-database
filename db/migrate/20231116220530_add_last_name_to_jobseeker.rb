class AddLastNameToJobseeker < ActiveRecord::Migration[7.1]
  def change
    add_column :job_seekers, :last_name, :string
  end
end
