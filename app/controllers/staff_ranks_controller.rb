class StaffRanksController < ApplicationController
  before_action :set_staff_rank, only: [:show, :edit, :update, :destroy]

  # GET /staff_ranks
  # GET /staff_ranks.json
  def index
    @staff_ranks = StaffRank.all
  end

  # GET /staff_ranks/1
  # GET /staff_ranks/1.json
  def show
  end

  # GET /staff_ranks/new
  def new
    @staff_rank = StaffRank.new
  end

  # GET /staff_ranks/1/edit
  def edit
  end

  # POST /staff_ranks
  # POST /staff_ranks.json
  def create
    @staff_rank = StaffRank.new(staff_rank_params)

    respond_to do |format|
      if @staff_rank.save
        format.html { redirect_to @staff_rank, notice: 'Staff rank was successfully created.' }
        format.json { render :show, status: :created, location: @staff_rank }
      else
        format.html { render :new }
        format.json { render json: @staff_rank.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /staff_ranks/1
  # PATCH/PUT /staff_ranks/1.json
  def update
    respond_to do |format|
      if @staff_rank.update(staff_rank_params)
        format.html { redirect_to @staff_rank, notice: 'Staff rank was successfully updated.' }
        format.json { render :show, status: :ok, location: @staff_rank }
      else
        format.html { render :edit }
        format.json { render json: @staff_rank.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /staff_ranks/1
  # DELETE /staff_ranks/1.json
  def destroy
    @staff_rank.destroy
    respond_to do |format|
      format.html { redirect_to staff_ranks_url, notice: 'Staff rank was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_staff_rank
      @staff_rank = StaffRank.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def staff_rank_params
      params.require(:staff_rank).permit(:ranking, :category)
    end
end
