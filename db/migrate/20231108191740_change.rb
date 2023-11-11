class Change < ActiveRecord::Migration[7.1]
  def change
    change_column :job_seekers, :search_start_date, :date
  end
end
