class Admin::IndustriesController < ApplicationController
  before_action :authenticate_user!
  before_action :authorize_admin!
  before_action :set_industry, only: [:show, :edit, :update, :destroy]

  # GET /admin/industries or /admin/industries.json
  def index
    @admin_industries = Admin::Industry.all
  end

  # GET /admin/industries/1 or /admin/industries/1.json
  def show
  end

  # GET /admin/industries/new
  def new
    @admin_industry = Admin::Industry.new
  end

  # GET /admin/industries/1/edit
  def edit
  end

  # POST /admin/industries or /admin/industries.json
  def create
    @admin_industry = Admin::Industry.new(admin_industry_params)

    respond_to do |format|
      if @admin_industry.save
        format.html { redirect_to admin_industry_url(@admin_industry), notice: "Industry was successfully created." }
        format.json { render :show, status: :created, location: @admin_industry }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @admin_industry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/industries/1 or /admin/industries/1.json
  def update
    respond_to do |format|
      if @admin_industry.update(admin_industry_params)
        format.html { redirect_to admin_industry_url(@admin_industry), notice: "Industry was successfully updated." }
        format.json { render :show, status: :ok, location: @admin_industry }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @admin_industry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/industries/1 or /admin/industries/1.json
  def destroy
    @admin_industry.destroy!

    respond_to do |format|
      format.html { redirect_to admin_industries_url, notice: "Industry was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  def set_industry
    @industry = Industry.find(params[:id])
  end

  def industry_params
    params.require(:industry).permit(:name)
  end

  def authorize_admin!
    unless current_user.admin?
      redirect_to root_path, alert: 'You are not authorized to access this section.'
    end
  end
end
