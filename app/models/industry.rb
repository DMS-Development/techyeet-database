class Industry < ApplicationRecord
  has_and_belongs_to_many :job_seekers

end
