class Restaurant < ActiveRecord::Base
	has_many :foods
	has_many :categories

	has_attached_file :image, styles: {thumb: "150x150>" }, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

end
