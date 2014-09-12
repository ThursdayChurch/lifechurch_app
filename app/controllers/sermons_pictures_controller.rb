class SermonsPicturesController < ApplicationController
  before_action :set_sermons_picture, only: [:show, :edit, :update, :destroy]

  # GET /sermons_pictures
  # GET /sermons_pictures.json
  def index
    @sermons_pictures = SermonsPicture.all
  end

  # GET /sermons_pictures/1
  # GET /sermons_pictures/1.json
  def show
  end

  # GET /sermons_pictures/new
  def new
    @sermons_picture = SermonsPicture.new
  end

  # GET /sermons_pictures/1/edit
  def edit
  end

  # POST /sermons_pictures
  # POST /sermons_pictures.json
  def create
    @sermons_picture = SermonsPicture.new(sermons_picture_params)

    respond_to do |format|
      if @sermons_picture.save
        format.html { redirect_to @sermons_picture, notice: 'Sermons picture was successfully created.' }
        format.json { render :show, status: :created, location: @sermons_picture }
      else
        format.html { render :new }
        format.json { render json: @sermons_picture.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sermons_pictures/1
  # PATCH/PUT /sermons_pictures/1.json
  def update
    respond_to do |format|
      if @sermons_picture.update(sermons_picture_params)
        format.html { redirect_to @sermons_picture, notice: 'Sermons picture was successfully updated.' }
        format.json { render :show, status: :ok, location: @sermons_picture }
      else
        format.html { render :edit }
        format.json { render json: @sermons_picture.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sermons_pictures/1
  # DELETE /sermons_pictures/1.json
  def destroy
    @sermons_picture.destroy
    respond_to do |format|
      format.html { redirect_to sermons_pictures_url, notice: 'Sermons picture was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sermons_picture
      @sermons_picture = SermonsPicture.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sermons_picture_params
      params.require(:sermons_picture).permit(:sermon_image, :image_processed, :sermons_id)
    end
end
