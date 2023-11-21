class DeleteNameFromJobSeeker < ActiveRecord::Migration[7.1]
  def change
    remove_column :job_seekers, :name, :string
  end
end
