ActiveAdmin.register Match do
  permit_params :map_id, :faction01_id, :faction02_id, :faction03_id, :faction04_id, :faction05_id, :faction06_id, :faction07_id, :owner_id

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

end
