class RemoveJobSeekersRefFromLocation < ActiveRecord::Migration[7.1]
  def change
    remove_reference :locations, :job_seeker, null: false, foreign_key: true
  end
end
