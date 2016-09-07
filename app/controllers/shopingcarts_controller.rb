class ShopingcartsController < ApplicationController
  before_action :set_shopingcart, only: [:show, :edit, :update, :destroy]

  # GET /shopingcarts
  # GET /shopingcarts.json
  def index
    @shopingcarts = Shopingcart.all
  end

  # GET /shopingcarts/1
  # GET /shopingcarts/1.json
  def show
  end

  # GET /shopingcarts/new
  def new
    @shopingcart = Shopingcart.new
  end

  # GET /shopingcarts/1/edit
  def edit
  end

  # POST /shopingcarts
  # POST /shopingcarts.json
  def create
    @shopingcart = Shopingcart.new(shopingcart_params)

    respond_to do |format|
      if @shopingcart.save
        format.html { redirect_to @shopingcart, notice: 'Shopingcart was successfully created.' }
        format.json { render :show, status: :created, location: @shopingcart }
      else
        format.html { render :new }
        format.json { render json: @shopingcart.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shopingcarts/1
  # PATCH/PUT /shopingcarts/1.json
  def update
    respond_to do |format|
      if @shopingcart.update(shopingcart_params)
        format.html { redirect_to @shopingcart, notice: 'Shopingcart was successfully updated.' }
        format.json { render :show, status: :ok, location: @shopingcart }
      else
        format.html { render :edit }
        format.json { render json: @shopingcart.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shopingcarts/1
  # DELETE /shopingcarts/1.json
  def destroy
    @shopingcart.destroy

    respond_to do |format|
      format.html { redirect_to :back, notice: 'Shopingcart was successfully destroyed.' }
      format.js {}
    end 
  end
  
  def destroy_all
    @shopingcarts = Shopingcart.destroy_all

    respond_to do |format|
      format.html { redirect_to :back, notice: 'Shopingcart was successfully destroyed.' }
      format.js {}
    end

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shopingcart
      @shopingcart = Shopingcart.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shopingcart_params
      params.require(:shopingcart).permit(:counter)
    end
end
