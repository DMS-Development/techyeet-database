json.extract! job_seeker, :id, :created_at, :updated_at
json.url job_seeker_url(job_seeker, format: :json)
