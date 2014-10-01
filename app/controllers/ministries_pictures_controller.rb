class MinistriesPicturesController < ApplicationController
  before_action :set_ministries_picture, only: [:show, :edit, :update, :destroy]

  # GET /ministries_pictures
  # GET /ministries_pictures.json
  def index
    @ministries_pictures = MinistriesPicture.all
  end

  # GET /ministries_pictures/1
  # GET /ministries_pictures/1.json
  def show
  end

  # GET /ministries_pictures/new
  def new
    @ministries_picture = MinistriesPicture.new
  end

  # GET /ministries_pictures/1/edit
  def edit
  end

  # POST /ministries_pictures
  # POST /ministries_pictures.json
  def create
    @ministries_picture = MinistriesPicture.new(ministries_picture_params)

    respond_to do |format|
      if @ministries_picture.save
        format.html { redirect_to @ministries_picture, notice: 'Ministries picture was successfully created.' }
        format.json { render :show, status: :created, location: @ministries_picture }
      else
        format.html { render :new }
        format.json { render json: @ministries_picture.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ministries_pictures/1
  # PATCH/PUT /ministries_pictures/1.json
  def update
    respond_to do |format|
      if @ministries_picture.update(ministries_picture_params)
        format.html { redirect_to @ministries_picture, notice: 'Ministries picture was successfully updated.' }
        format.json { render :show, status: :ok, location: @ministries_picture }
      else
        format.html { render :edit }
        format.json { render json: @ministries_picture.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ministries_pictures/1
  # DELETE /ministries_pictures/1.json
  def destroy
    @ministries_picture.remove_ministry_image!
    @ministries_picture.destroy
    respond_to do |format|
      format.html { redirect_to ministries_pictures_url, notice: 'Ministries picture was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ministries_picture
      @ministries_picture = MinistriesPicture.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ministries_picture_params
      params.require(:ministries_picture).permit(:ministry_image, :image_processed, :ministries_id, :ministry_id)
    end
end
