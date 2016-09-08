ActiveAdmin.register Category do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :name, :description
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
			
			f.collection_select :restaurant_id, Restaurant.all, :id, :name
		end
		f.actions
	end

	index do
		
		column :name do |category|
			link_to category.name, admin_category_path(category)
		end
		column :description
		
		actions
	end

	show do
		attributes_table do
			
			row :name
		
			row :description
		end
		active_admin_comments
	end
	
end
