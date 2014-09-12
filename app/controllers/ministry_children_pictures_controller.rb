class MinistryChildrenPicturesController < ApplicationController
  before_action :set_ministry_children_picture, only: [:show, :edit, :update, :destroy]

  # GET /ministry_children_pictures
  # GET /ministry_children_pictures.json
  def index
    @ministry_children_pictures = MinistryChildrenPicture.all
  end

  # GET /ministry_children_pictures/1
  # GET /ministry_children_pictures/1.json
  def show
  end

  # GET /ministry_children_pictures/new
  def new
    @ministry_children_picture = MinistryChildrenPicture.new
  end

  # GET /ministry_children_pictures/1/edit
  def edit
  end

  # POST /ministry_children_pictures
  # POST /ministry_children_pictures.json
  def create
    @ministry_children_picture = MinistryChildrenPicture.new(ministry_children_picture_params)

    respond_to do |format|
      if @ministry_children_picture.save
        format.html { redirect_to @ministry_children_picture, notice: 'Ministry children picture was successfully created.' }
        format.json { render :show, status: :created, location: @ministry_children_picture }
      else
        format.html { render :new }
        format.json { render json: @ministry_children_picture.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ministry_children_pictures/1
  # PATCH/PUT /ministry_children_pictures/1.json
  def update
    respond_to do |format|
      if @ministry_children_picture.update(ministry_children_picture_params)
        format.html { redirect_to @ministry_children_picture, notice: 'Ministry children picture was successfully updated.' }
        format.json { render :show, status: :ok, location: @ministry_children_picture }
      else
        format.html { render :edit }
        format.json { render json: @ministry_children_picture.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ministry_children_pictures/1
  # DELETE /ministry_children_pictures/1.json
  def destroy
    @ministry_children_picture.destroy
    respond_to do |format|
      format.html { redirect_to ministry_children_pictures_url, notice: 'Ministry children picture was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ministry_children_picture
      @ministry_children_picture = MinistryChildrenPicture.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ministry_children_picture_params
      params.require(:ministry_children_picture).permit(:ministrychild_image, :image_processed, :ministrychild_id, :ministry_id)
    end
end
