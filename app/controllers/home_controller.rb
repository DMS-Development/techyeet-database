class HomeController < ApplicationController

  def index
    if user_signed_in?
      if current_user.job_seeker.present?
        redirect_to job_seeker_path(current_user.job_seeker)
      else
        redirect_to new_job_seeker_path
      end
    else
      redirect_to new_user_session_path
    end
  end
end
