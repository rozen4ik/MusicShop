class SellInstrumentForCustomersController < ApplicationController
  before_action :set_sell_instrument_for_customer, only: [:show, :edit, :update, :destroy]

  # GET /sell_instrument_for_customers
  # GET /sell_instrument_for_customers.json
  def index
    @sell_instrument_for_customers = SellInstrumentForCustomer.all
  end

  # GET /sell_instrument_for_customers/1
  # GET /sell_instrument_for_customers/1.json
  def show
  end

  # GET /sell_instrument_for_customers/new
  def new
    @sell_instrument_for_customer = SellInstrumentForCustomer.new
  end

  # GET /sell_instrument_for_customers/1/edit
  def edit
  end

  # POST /sell_instrument_for_customers
  # POST /sell_instrument_for_customers.json
  def create
    @sell_instrument_for_customer = SellInstrumentForCustomer.new(sell_instrument_for_customer_params)

    respond_to do |format|
      if @sell_instrument_for_customer.save
        format.html { redirect_to @sell_instrument_for_customer, notice: 'Sell instrument for customer was successfully created.' }
        format.json { render :show, status: :created, location: @sell_instrument_for_customer }
      else
        format.html { render :new }
        format.json { render json: @sell_instrument_for_customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sell_instrument_for_customers/1
  # PATCH/PUT /sell_instrument_for_customers/1.json
  def update
    respond_to do |format|
      if @sell_instrument_for_customer.update(sell_instrument_for_customer_params)
        format.html { redirect_to @sell_instrument_for_customer, notice: 'Sell instrument for customer was successfully updated.' }
        format.json { render :show, status: :ok, location: @sell_instrument_for_customer }
      else
        format.html { render :edit }
        format.json { render json: @sell_instrument_for_customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sell_instrument_for_customers/1
  # DELETE /sell_instrument_for_customers/1.json
  def destroy
    @sell_instrument_for_customer.destroy
    respond_to do |format|
      format.html { redirect_to sell_instrument_for_customers_url, notice: 'Sell instrument for customer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sell_instrument_for_customer
      @sell_instrument_for_customer = SellInstrumentForCustomer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sell_instrument_for_customer_params
      params.require(:sell_instrument_for_customer).permit(:dateSell, :collInstrumentSell, :sum)
    end
end
