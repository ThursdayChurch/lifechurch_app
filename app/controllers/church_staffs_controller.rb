class ChurchStaffsController < ApplicationController
  before_action :set_church_staff, only: [:show, :edit, :update, :destroy]
    layout "main_body_layout" 

  # GET /church_staffs
  # GET /church_staffs.json
  def index
    @church_staffs = ChurchStaff.all
  end

  # GET /church_staffs/1
  # GET /church_staffs/1.json
  def show
  end

  # GET /church_staffs/new
  def new
    @church_staff = ChurchStaff.new
  end

  # GET /church_staffs/1/edit
  def edit
  end

  # POST /church_staffs
  # POST /church_staffs.json
  def create
    @church_staff = ChurchStaff.new(church_staff_params)

    respond_to do |format|
      if @church_staff.save
        format.html { redirect_to @church_staff, notice: 'Church staff was successfully created.' }
        format.json { render :show, status: :created, location: @church_staff }
      else
        format.html { render :new }
        format.json { render json: @church_staff.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /church_staffs/1
  # PATCH/PUT /church_staffs/1.json
  def update
    respond_to do |format|
      if @church_staff.update(church_staff_params)
        format.html { redirect_to @church_staff, notice: 'Church staff was successfully updated.' }
        format.json { render :show, status: :ok, location: @church_staff }
      else
        format.html { render :edit }
        format.json { render json: @church_staff.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /church_staffs/1
  # DELETE /church_staffs/1.json
  def destroy
    @church_staff.destroy
    respond_to do |format|
      format.html { redirect_to church_staffs_url, notice: 'Church staff was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_church_staff
      @church_staff = ChurchStaff.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def church_staff_params
      params.require(:church_staff).permit(:first_name, :last_name, :spouse_first_name, :title, :started_service, :description, :contact_email, :image, :birthday, :blog, :url, :phone_ext, :phone_number, :full_name, :email_id, :facebook, :twitter, :google_plus, :linked_in, :birth_location, :category, :rank)
    end
end
