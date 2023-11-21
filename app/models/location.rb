class Location < ApplicationRecord
  has_many :job_seeker

  def name_with_state_country
    "#{city}, #{state}, #{country}"
  end
end
