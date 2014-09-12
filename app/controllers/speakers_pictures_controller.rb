class SpeakersPicturesController < ApplicationController
  before_action :set_speakers_picture, only: [:show, :edit, :update, :destroy]

  # GET /speakers_pictures
  # GET /speakers_pictures.json
  def index
    @speakers_pictures = SpeakersPicture.all
  end

  # GET /speakers_pictures/1
  # GET /speakers_pictures/1.json
  def show
  end

  # GET /speakers_pictures/new
  def new
    @speakers_picture = SpeakersPicture.new
  end

  # GET /speakers_pictures/1/edit
  def edit
  end

  # POST /speakers_pictures
  # POST /speakers_pictures.json
  def create
    @speakers_picture = SpeakersPicture.new(speakers_picture_params)

    respond_to do |format|
      if @speakers_picture.save
        format.html { redirect_to @speakers_picture, notice: 'Speakers picture was successfully created.' }
        format.json { render :show, status: :created, location: @speakers_picture }
      else
        format.html { render :new }
        format.json { render json: @speakers_picture.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /speakers_pictures/1
  # PATCH/PUT /speakers_pictures/1.json
  def update
    respond_to do |format|
      if @speakers_picture.update(speakers_picture_params)
        format.html { redirect_to @speakers_picture, notice: 'Speakers picture was successfully updated.' }
        format.json { render :show, status: :ok, location: @speakers_picture }
      else
        format.html { render :edit }
        format.json { render json: @speakers_picture.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /speakers_pictures/1
  # DELETE /speakers_pictures/1.json
  def destroy
    @speakers_picture.destroy
    respond_to do |format|
      format.html { redirect_to speakers_pictures_url, notice: 'Speakers picture was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_speakers_picture
      @speakers_picture = SpeakersPicture.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def speakers_picture_params
      params.require(:speakers_picture).permit(:speaker_image, :speaker_id, :image_processed)
    end
end
