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

		
		food_hash ={}
		rest_id = params[:shopingcart][:rest_id]
		food_id = params[:shopingcart][:food_id]
		food_size = params[:shopingcart][:counter]
		food_size2 = params[:shopingcart][:food_size]

		food_hash[food_id] = food_size
		
		if session[:cart].nil?
			session[:cart] = {}
		end

		

		if session[:cart][rest_id].nil?			
			session[:cart][rest_id] = {}
			session[:cart][rest_id] = food_hash
		else
			unless session[:cart][rest_id][food_id].nil?
				session[:cart][rest_id].each do |key, val|
					if key == food_id		
						add_more = val.to_i + food_size.to_i
						session[:cart][rest_id][key] = add_more
					else
						session[:cart][rest_id][key] = food_size
					end
				end
			else
				session[:cart][rest_id][food_id] = food_size
			end
		end

		redirect_to :back
	end

	def add_size
		rest_id = params[:shopingcart][:rest_id]
		food_id = params[:shopingcart][:food_id]
		food_size = params[:shopingcart][:food_size]
		session[:cart][rest_id][food_id] = food_size

		h = session[:cart][:rest_id]
		h.delete_if {|key, val|val == 0}

		redirect_to :back
	end

private
	def shopingcart_params
		params.require(:shopingcart).permit(:counter, :food_id)
	end
	
end
