class JobSeekersController < ApplicationController
  before_action :set_job_seeker, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :authorize_user!, only: [:edit, :update, :destroy]
  # GET /job_seekers or /job_seekers.json
  def index
    @job_seekers = JobSeeker.all
  end

  # GET /job_seekers/1 or /job_seekers/1.json
  def show

  end

  # GET /job_seekers/new
  def new
    @job_seeker = current_user.build_job_seeker
    @job_seeker.build_location
  end

  # GET /job_seekers/1/edit
  def edit
  end

  # POST /job_seekers or /job_seekers.json
  def create
    @job_seeker = current_user.build_job_seeker(job_seeker_params)

    if @job_seeker.save
      redirect_to @job_seeker, notice: "Job seeker was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @job_seeker.update(job_seeker_params)
      redirect_to @job_seeker, notice: "Job seeker was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @job_seeker.destroy!

    redirect_to job_seekers_url, notice: "Job seeker was successfully destroyed."
  end

  private

  def set_job_seeker
    @job_seeker = JobSeeker.find(params[:id])
  end

  def authorize_user!
    redirect_to @job_seeker, alert: 'You are not authorized to modify this profile.' unless @job_seeker.user == current_user
  end

  def job_seeker_params
    params.require(:job_seeker).permit(:name, :available_to_start, :search_start_date, :search_status, :urgency, :current_title, :desired_role, :work_experience, :education_level, :company_size_preference, :willing_to_relocate, :salary_range, :unique_selling_point, :success_stories, :certifications, :websites, :resume_link, location_attributes: [:city, :state, :country])
  end
end
