class Food < ActiveRecord::Base
	belongs_to :restaurant
	# has_many :shopingcarts
	belongs_to :category
	has_attached_file :image, styles: {thumb: "100x100>" }, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

end
