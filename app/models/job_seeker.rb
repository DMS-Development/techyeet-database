class JobSeeker < ApplicationRecord
  belongs_to :user
  has_one :location, dependent: :destroy
  has_and_belongs_to_many :skills
  has_and_belongs_to_many :industries
end
