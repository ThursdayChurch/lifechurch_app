class BulletinsController < ApplicationController
  before_action :set_bulletin, only: [:show, :edit, :update, :destroy]
  layout "main_body_layout" 



  def step_1
    @uploader = Bulletin.new.bulletin_image
    @uploader.success_action_redirect = new_bulletin_url
 
    
  end
  
  # GET /bulletins
  # GET /bulletins.json
  def index
     @bulletins = Bulletin.last(3).reverse
  end

  # GET /bulletins/1
  # GET /bulletins/1.json
  def show
  end

  # GET /bulletins/new
  def new
    @bulletin = Bulletin.new(key: params[:key])
  end

  # GET /bulletins/1/edit
  def edit
  end

  # POST /bulletins
  # POST /bulletins.json
  def create
    @bulletin = Bulletin.new(bulletin_params)

    @bulletin.display_till =  @bulletin.set_display_till_date(@bulletin)
    
    @bulletin.name  = @bulletin.create_name(@bulletin)


    respond_to do |format|
      if @bulletin.save
        format.html { redirect_to @bulletin, notice: 'Bulletin was successfully created.' }
        format.json { render :show, status: :created, location: @bulletin }
      else
        format.html { render :new }
        format.json { render json: @bulletin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bulletins/1
  # PATCH/PUT /bulletins/1.json
  def update
    respond_to do |format|
      if @bulletin.update(bulletin_params)
        format.html { redirect_to @bulletin, notice: 'Bulletin was successfully updated.' }
        format.json { render :show, status: :ok, location: @bulletin }
      else
        format.html { render :edit }
        format.json { render json: @bulletin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bulletins/1
  # DELETE /bulletins/1.json
  def destroy
    @bulletin.remove_bulletin_image! 
    @bulletin.destroy
    
    
    respond_to do |format|
      format.html { redirect_to bulletins_url, notice: 'Bulletin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bulletin
      @bulletin = Bulletin.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bulletin_params
      params.require(:bulletin).permit( :key,  :display_till, :bulletin_image, :display_start,)
    end
end
