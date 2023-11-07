class CreateLocations < ActiveRecord::Migration[7.1]
  def change
    create_table :locations do |t|
      t.string :city
      t.string :state
      t.string :country
      t.references :job_seeker, null: false, foreign_key: true

      t.timestamps
    end
  end
end
