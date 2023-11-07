class CreateJoinTableJobSeekerSkill < ActiveRecord::Migration[7.1]
  def change
    create_join_table :job_seekers, :skills do |t|
    end
  end
end
