ActiveAdmin.register Food do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :name, :description, :category_id, :image, :price, :restaurant_id

# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
form do |f|
		f.inputs do
			
			f.input :name
			f.input :description
			f.input :restaurant
			f.input :category
			f.input :price
			f.input :image, :as => :file, :hint => image_tag(f.object.image.url(:thumb))
		end
		f.actions
	end

	index do
		selectable_column
		id_column
		column :image do |food|
			image_tag food.image.url(:thumb)
		end
		column :name do |food|
			link_to food.name, admin_food_path(food)
		end
		column :description
		column :price
		actions
	end

	show do
		attributes_table do
			row :image do |food|
				image_tag food.image.url(:thumb)
			end
			row :name
			row :category
			row :description			
			row :price
		end
		active_admin_comments
	end

end
