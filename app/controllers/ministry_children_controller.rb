class MinistryChildrenController < ApplicationController
  before_action :set_ministry_child, only: [:show, :edit, :update, :destroy]

  # GET /ministry_children
  # GET /ministry_children.json
  def index
    @ministry_children = MinistryChild.all
  end

  # GET /ministry_children/1
  # GET /ministry_children/1.json
  def show
  end

  # GET /ministry_children/new
  def new
    @ministry_child = MinistryChild.new
  end

  # GET /ministry_children/1/edit
  def edit
  end

  # POST /ministry_children
  # POST /ministry_children.json
  def create
    @ministry_child = MinistryChild.new(ministry_child_params)

    respond_to do |format|
      if @ministry_child.save
        format.html { redirect_to @ministry_child, notice: 'Ministry child was successfully created.' }
        format.json { render :show, status: :created, location: @ministry_child }
      else
        format.html { render :new }
        format.json { render json: @ministry_child.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ministry_children/1
  # PATCH/PUT /ministry_children/1.json
  def update
    respond_to do |format|
      if @ministry_child.update(ministry_child_params)
        format.html { redirect_to @ministry_child, notice: 'Ministry child was successfully updated.' }
        format.json { render :show, status: :ok, location: @ministry_child }
      else
        format.html { render :edit }
        format.json { render json: @ministry_child.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ministry_children/1
  # DELETE /ministry_children/1.json
  def destroy
    @ministry_child.destroy
    respond_to do |format|
      format.html { redirect_to ministry_children_url, notice: 'Ministry child was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ministry_child
      @ministry_child = MinistryChild.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ministry_child_params
      params.require(:ministry_child).permit(:name, :contact_person, :contact_email, :description, :display_rank, :ta1, :ta2, :ta3, :ta4, :ta5, :advert_main_page, :ministry_id, :slug)
    end
end
