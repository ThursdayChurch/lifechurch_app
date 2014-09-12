class EgivingsController < ApplicationController
  before_action :set_egiving, only: [:show, :edit, :update, :destroy]

  # GET /egivings
  # GET /egivings.json
  def index
    @egivings = Egiving.all
  end

  # GET /egivings/1
  # GET /egivings/1.json
  def show
  end

  # GET /egivings/new
  def new
    @egiving = Egiving.new
  end

  # GET /egivings/1/edit
  def edit
  end

  # POST /egivings
  # POST /egivings.json
  def create
    @egiving = Egiving.new(egiving_params)

    respond_to do |format|
      if @egiving.save
        format.html { redirect_to @egiving, notice: 'Egiving was successfully created.' }
        format.json { render :show, status: :created, location: @egiving }
      else
        format.html { render :new }
        format.json { render json: @egiving.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /egivings/1
  # PATCH/PUT /egivings/1.json
  def update
    respond_to do |format|
      if @egiving.update(egiving_params)
        format.html { redirect_to @egiving, notice: 'Egiving was successfully updated.' }
        format.json { render :show, status: :ok, location: @egiving }
      else
        format.html { render :edit }
        format.json { render json: @egiving.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /egivings/1
  # DELETE /egivings/1.json
  def destroy
    @egiving.destroy
    respond_to do |format|
      format.html { redirect_to egivings_url, notice: 'Egiving was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_egiving
      @egiving = Egiving.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def egiving_params
      params.require(:egiving).permit(:amount, :send_email_giver, :email_of_giver, :name_on_card, :name_on_card_key, :name_on_card_iv, :card_number, :card_number_key, :card_number_iv, :ccv_number, :ccv_number_key, :ccv_number_iv, :date_month, :date_month_key, :date_month_iv, :date_year, :date_year_key, :date_year_iv, :giving, :year, :card_type, :amountfinal, :propose_of_donation, :first_name, :last_name, :address, :city, :province, :country, :postal_code, :phone_number, :finalamount, :giving_year)
    end
end
