class LifePulsesStocksPicturesController < ApplicationController
  before_action :set_life_pulses_stocks_picture, only: [:show, :edit, :update, :destroy]

  # GET /life_pulses_stocks_pictures
  # GET /life_pulses_stocks_pictures.json
  def index
    @life_pulses_stocks_pictures = LifePulsesStocksPicture.all
  end

  # GET /life_pulses_stocks_pictures/1
  # GET /life_pulses_stocks_pictures/1.json
  def show
  end

  # GET /life_pulses_stocks_pictures/new
  def new
    @life_pulses_stocks_picture = LifePulsesStocksPicture.new
  end

  # GET /life_pulses_stocks_pictures/1/edit
  def edit
  end

  # POST /life_pulses_stocks_pictures
  # POST /life_pulses_stocks_pictures.json
  def create
    @life_pulses_stocks_picture = LifePulsesStocksPicture.new(life_pulses_stocks_picture_params)

    respond_to do |format|
      if @life_pulses_stocks_picture.save
        format.html { redirect_to @life_pulses_stocks_picture, notice: 'Life pulses stocks picture was successfully created.' }
        format.json { render :show, status: :created, location: @life_pulses_stocks_picture }
      else
        format.html { render :new }
        format.json { render json: @life_pulses_stocks_picture.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /life_pulses_stocks_pictures/1
  # PATCH/PUT /life_pulses_stocks_pictures/1.json
  def update
    respond_to do |format|
      if @life_pulses_stocks_picture.update(life_pulses_stocks_picture_params)
        format.html { redirect_to @life_pulses_stocks_picture, notice: 'Life pulses stocks picture was successfully updated.' }
        format.json { render :show, status: :ok, location: @life_pulses_stocks_picture }
      else
        format.html { render :edit }
        format.json { render json: @life_pulses_stocks_picture.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /life_pulses_stocks_pictures/1
  # DELETE /life_pulses_stocks_pictures/1.json
  def destroy
    @life_pulses_stocks_picture.destroy
    respond_to do |format|
      format.html { redirect_to life_pulses_stocks_pictures_url, notice: 'Life pulses stocks picture was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_life_pulses_stocks_picture
      @life_pulses_stocks_picture = LifePulsesStocksPicture.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def life_pulses_stocks_picture_params
      params.require(:life_pulses_stocks_picture).permit(:life_pulse_id, :life_pulse_image, :title, :summary, :image_processed, :main_page, :life_pulse_stock_image)
    end
end
