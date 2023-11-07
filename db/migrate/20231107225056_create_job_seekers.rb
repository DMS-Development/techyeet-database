class CreateJobSeekers < ActiveRecord::Migration[7.1]
  def change
    create_table :job_seekers do |t|
      t.string :name
      t.string :available_to_start
      t.date :search_start_date
      t.string :search_status
      t.integer :urgency
      t.string :current_title
      t.string :desired_role
      t.text :work_experience
      t.string :education_level
      t.string :company_size_preference
      t.boolean :willing_to_relocate
      t.string :salary_range
      t.text :unique_selling_point
      t.text :success_stories
      t.text :certifications
      t.text :websites
      t.string :resume_link

      t.timestamps
    end
  end
end
