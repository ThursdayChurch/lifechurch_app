class EventsSetupFormsController < ApplicationController
  before_action :set_events_setup_form, only: [:show, :edit, :update, :destroy]

  # GET /events_setup_forms
  # GET /events_setup_forms.json
  def index
    @events_setup_forms = EventsSetupForm.all
  end

  # GET /events_setup_forms/1
  # GET /events_setup_forms/1.json
  def show
  end

  # GET /events_setup_forms/new
  def new
    @events_setup_form = EventsSetupForm.new
  end

  # GET /events_setup_forms/1/edit
  def edit
  end

  # POST /events_setup_forms
  # POST /events_setup_forms.json
  def create
    @events_setup_form = EventsSetupForm.new(events_setup_form_params)

    respond_to do |format|
      if @events_setup_form.save
        format.html { redirect_to @events_setup_form, notice: 'Events setup form was successfully created.' }
        format.json { render :show, status: :created, location: @events_setup_form }
      else
        format.html { render :new }
        format.json { render json: @events_setup_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /events_setup_forms/1
  # PATCH/PUT /events_setup_forms/1.json
  def update
    respond_to do |format|
      if @events_setup_form.update(events_setup_form_params)
        format.html { redirect_to @events_setup_form, notice: 'Events setup form was successfully updated.' }
        format.json { render :show, status: :ok, location: @events_setup_form }
      else
        format.html { render :edit }
        format.json { render json: @events_setup_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events_setup_forms/1
  # DELETE /events_setup_forms/1.json
  def destroy
    @events_setup_form.destroy
    respond_to do |format|
      format.html { redirect_to events_setup_forms_url, notice: 'Events setup form was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_events_setup_form
      @events_setup_form = EventsSetupForm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def events_setup_form_params
      params.require(:events_setup_form).permit(:event_id, :email_for_forms, :c_f_1, :c_f_2, :c_f_3, :c_f_4, :c_f_5, :c_f_6, :c_f_7, :c_f_8, :c_f_9, :c_f_10, :c_f_11, :c_f_12, :age, :c_f_1_h, :c_f_2_h, :c_f_3_h, :c_f_4_h, :c_f_5_h, :c_f_6_h, :c_f_7_h, :c_f_8_h, :c_f_9_h, :c_f_10_h, :c_f_11_h, :c_f_12_h, :phone, :note, :bday, :sex, :use_form, :down_link, :ok_to_contact, :form_title)
    end
end
