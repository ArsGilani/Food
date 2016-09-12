class ShopingcartsController < ApplicationController


  def index
    # session[:cart] = {}

  end




  def clear
    session[:cart] = {}

    redirect_to :back
  end

  
end
