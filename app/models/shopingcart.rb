class Shopingcart < ActiveRecord::Base
	belongs_to :food
	validates :counter, presence: true, numericality:{greater_then:0}
end
