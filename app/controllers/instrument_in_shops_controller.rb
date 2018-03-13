class InstrumentInShopsController < ApplicationController
  before_action :set_instrument_in_shop, only: [:show, :edit, :update, :destroy]

  # GET /instrument_in_shops
  # GET /instrument_in_shops.json
  def index
    @instrument_in_shops = InstrumentInShop.all
  end

  # GET /instrument_in_shops/1
  # GET /instrument_in_shops/1.json
  def show
  end

  # GET /instrument_in_shops/new
  def new
    @instrument_in_shop = InstrumentInShop.new
  end

  # GET /instrument_in_shops/1/edit
  def edit
  end

  # POST /instrument_in_shops
  # POST /instrument_in_shops.json
  def create
    @instrument_in_shop = InstrumentInShop.new(instrument_in_shop_params)

    respond_to do |format|
      if @instrument_in_shop.save
        format.html { redirect_to @instrument_in_shop, notice: 'Instrument in shop was successfully created.' }
        format.json { render :show, status: :created, location: @instrument_in_shop }
      else
        format.html { render :new }
        format.json { render json: @instrument_in_shop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /instrument_in_shops/1
  # PATCH/PUT /instrument_in_shops/1.json
  def update
    respond_to do |format|
      if @instrument_in_shop.update(instrument_in_shop_params)
        format.html { redirect_to @instrument_in_shop, notice: 'Instrument in shop was successfully updated.' }
        format.json { render :show, status: :ok, location: @instrument_in_shop }
      else
        format.html { render :edit }
        format.json { render json: @instrument_in_shop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /instrument_in_shops/1
  # DELETE /instrument_in_shops/1.json
  def destroy
    @instrument_in_shop.destroy
    respond_to do |format|
      format.html { redirect_to instrument_in_shops_url, notice: 'Instrument in shop was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_instrument_in_shop
      @instrument_in_shop = InstrumentInShop.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def instrument_in_shop_params
      params.require(:instrument_in_shop).permit(:date, :numberDoc, :nameCompany, :collInstrument, :sumAll)
    end
end
