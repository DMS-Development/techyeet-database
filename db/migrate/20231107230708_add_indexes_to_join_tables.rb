class AddIndexesToJoinTables < ActiveRecord::Migration[7.1]
  def change
    add_index :job_seekers_skills, :job_seeker_id
    add_index :job_seekers_skills, :skill_id
    add_index :industries_job_seekers, :job_seeker_id
    add_index :industries_job_seekers, :industry_id
  end
end
