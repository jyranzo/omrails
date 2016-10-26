ActiveAdmin.register User do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

	permit_params :email, :admin

	form do |f|
		f.semantic_erros
		f.imput do
			f.imput	:email
			f.imput	:admin
		end
		f.actions
	end

	index do
		id_column
		column :email
		column :admin
		actions
	end

end
