ActiveAdmin.register Faction do
  permit_params :civ_id, :leader_id, :dom_score_land, :dom_score_water, :dom_def_land, :dom_def_water, :sci_score_land, :sci_score_water, :sci_def_land, :sci_def_water, :cul_score_land, :cul_score_water, :cul_def_land, :cul_def_water, :rel_score_land, :rel_score_water, :rel_def_land, :rel_def_water, :dip_score_land, :dip_score_water, :dip_def_land, :dip_def_water

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
