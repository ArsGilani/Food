class Restaurant < ActiveRecord::Base
	has_many :foods
	has_many :categories
end
