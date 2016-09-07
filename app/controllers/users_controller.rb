class UsersController < ApplicationController

	def index_r
		@restaurants = Restaurant.all
	end

	def index_f
		@foods = Food.all

	end
	
	def show_r
		@restaurant = Restaurant.find(params[:id])
	end

	def show_f
		@foods = Food.find(params[:id])

	end

	def add_cart
		@shopingcart = Shopingcart.new(shopingcart_params)
		if @shopingcart.save
			respond_to do |format|
		      format.html {}
		      format.js {}
		    end
		else
			flash[:notice] = "Ne dobavili"
			redirect_to :back
		end

	    # respond_to do |format|
	    #   format.html {}
	    #   format.js {}
	    # end
	end

private
	def shopingcart_params
		params.require(:shopingcart).permit(:counter, :food_id)
	end
	
end
