class ShopingcartsController < ApplicationController


  def index
    # session[:cart] = {}

  end

  def change_count

  end


  def clear
    session[:cart] = {}

    redirect_to :back
  end

  
end
