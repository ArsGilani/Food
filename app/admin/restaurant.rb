ActiveAdmin.register Restaurant do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :name, :description, :image
#
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
			f.input :image, :as => :file, :hint => image_tag(f.object.image.url(:thumb))
		end
		f.actions
	end

	index do
	
		column :image do |restaurant|
			image_tag restaurant.image.url(:thumb)
		end
		column :name do |restaurant|
			link_to restaurant.name, admin_restaurant_path(restaurant)
		end
		column :description do |restaurant|
			restaurant.description
		end
		actions
	end

	show do
		attributes_table do
			row :image do |restaurant|
				image_tag restaurant.image.url(:thumb)
			end
			row :name			
			row :description
		end
		active_admin_comments
	end
end
