class Food < ActiveRecord::Base
	belongs_to :restaurant
	has_many :shopingcarts
	belongs_to :category
end
