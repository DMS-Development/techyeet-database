class AddUserToJobSeekers < ActiveRecord::Migration[7.1]
  def change
    add_reference :job_seekers, :user, null: false, foreign_key: true
  end
end
