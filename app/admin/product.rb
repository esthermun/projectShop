ActiveAdmin.register Product do
	menu label: "My Products"

permit_params :name, :description, :quantity, :price, :sku, :category_id, :image


#See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end


end
