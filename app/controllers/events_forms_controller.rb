class EventsFormsController < ApplicationController
  before_action :set_events_form, only: [:show, :edit, :update, :destroy]

  # GET /events_forms
  # GET /events_forms.json
  def index
    @events_forms = EventsForm.all
  end

  # GET /events_forms/1
  # GET /events_forms/1.json
  def show
  end

  # GET /events_forms/new
  def new
    @events_form = EventsForm.new
  end

  # GET /events_forms/1/edit
  def edit
  end

  # POST /events_forms
  # POST /events_forms.json
  def create
    @events_form = EventsForm.new(events_form_params)

    respond_to do |format|
      if @events_form.save
        format.html { redirect_to @events_form, notice: 'Events form was successfully created.' }
        format.json { render :show, status: :created, location: @events_form }
      else
        format.html { render :new }
        format.json { render json: @events_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /events_forms/1
  # PATCH/PUT /events_forms/1.json
  def update
    respond_to do |format|
      if @events_form.update(events_form_params)
        format.html { redirect_to @events_form, notice: 'Events form was successfully updated.' }
        format.json { render :show, status: :ok, location: @events_form }
      else
        format.html { render :edit }
        format.json { render json: @events_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events_forms/1
  # DELETE /events_forms/1.json
  def destroy
    @events_form.destroy
    respond_to do |format|
      format.html { redirect_to events_forms_url, notice: 'Events form was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_events_form
      @events_form = EventsForm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def events_form_params
      params.require(:events_form).permit(:event_setup_form_id, :first_name, :last_name, :receive_emails, :email, :phone_number, :notes, :c_f_1_s, :c_f_2_s, :c_f_3_s, :c_f_4_s, :c_f_5_b, :c_f_6_b, :c_f_7_b, :c_f_8_b, :c_f_9_t, :c_f_10_t, :c_f_11_t, :c_f_12_t, :age, :bday, :sex)
    end
end
