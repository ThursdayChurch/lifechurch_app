class LifePulsesController < ApplicationController
  before_action :set_life_pulse, only: [:show, :edit, :update, :destroy]

  # GET /life_pulses
  # GET /life_pulses.json
  def index
    @life_pulses = LifePulse.all
  end

  # GET /life_pulses/1
  # GET /life_pulses/1.json
  def show
  end

  # GET /life_pulses/new
  def new
    @life_pulse = LifePulse.new
  end

  # GET /life_pulses/1/edit
  def edit
  end

  # POST /life_pulses
  # POST /life_pulses.json
  def create
    @life_pulse = LifePulse.new(life_pulse_params)

    respond_to do |format|
      if @life_pulse.save
        format.html { redirect_to @life_pulse, notice: 'Life pulse was successfully created.' }
        format.json { render :show, status: :created, location: @life_pulse }
      else
        format.html { render :new }
        format.json { render json: @life_pulse.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /life_pulses/1
  # PATCH/PUT /life_pulses/1.json
  def update
    respond_to do |format|
      if @life_pulse.update(life_pulse_params)
        format.html { redirect_to @life_pulse, notice: 'Life pulse was successfully updated.' }
        format.json { render :show, status: :ok, location: @life_pulse }
      else
        format.html { render :edit }
        format.json { render json: @life_pulse.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /life_pulses/1
  # DELETE /life_pulses/1.json
  def destroy
    @life_pulse.destroy
    respond_to do |format|
      format.html { redirect_to life_pulses_url, notice: 'Life pulse was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_life_pulse
      @life_pulse = LifePulse.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def life_pulse_params
      params.require(:life_pulse).permit(:keywords, :from_pastor_desk, :template_selected, :content, :title, :summary, :flickr_id, :slug)
    end
end
