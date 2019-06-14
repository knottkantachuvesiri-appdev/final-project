Rails.application.routes.draw do
  devise_for :users
  # Routes for the Match resource:

  match("/", { :controller => "matches", :action => "blank_form", :via => "get" })

  # CREATE
  match("/new_match_form", { :controller => "matches", :action => "blank_form", :via => "get" })
  match("/insert_match_record", { :controller => "matches", :action => "save_new_info", :via => "post" })

  # READ
  match("/matches", { :controller => "matches", :action => "list", :via => "get" })
  match("/matches/:id_to_display", { :controller => "matches", :action => "details", :via => "get" })

  # UPDATE
  match("/existing_match_form/:id_to_prefill", { :controller => "matches", :action => "prefilled_form", :via => "get" })
  match("/update_match_record/:id_to_modify", { :controller => "matches", :action => "save_edits", :via => "post" })

  # DELETE
  match("/delete_match/:id_to_remove", { :controller => "matches", :action => "remove_row", :via => "get" })

  #------------------------------

  # Routes for the Map resource:

  # CREATE
  match("/new_map_form", { :controller => "maps", :action => "blank_form", :via => "get" })
  match("/insert_map_record", { :controller => "maps", :action => "save_new_info", :via => "post" })

  # READ
  match("/maps", { :controller => "maps", :action => "list", :via => "get" })
  match("/maps/:id_to_display", { :controller => "maps", :action => "details", :via => "get" })

  # UPDATE
  match("/existing_map_form/:id_to_prefill", { :controller => "maps", :action => "prefilled_form", :via => "get" })
  match("/update_map_record/:id_to_modify", { :controller => "maps", :action => "save_edits", :via => "post" })

  # DELETE
  match("/delete_map/:id_to_remove", { :controller => "maps", :action => "remove_row", :via => "get" })

  #------------------------------

  # Routes for the Faction resource:

  # CREATE
  match("/new_faction_form", { :controller => "factions", :action => "blank_form", :via => "get" })
  match("/insert_faction_record", { :controller => "factions", :action => "save_new_info", :via => "post" })

  # READ
  match("/factions", { :controller => "factions", :action => "list", :via => "get" })
  match("/factions/:id_to_display", { :controller => "factions", :action => "details", :via => "get" })

  # UPDATE
  match("/existing_faction_form/:id_to_prefill", { :controller => "factions", :action => "prefilled_form", :via => "get" })
  match("/update_faction_record/:id_to_modify", { :controller => "factions", :action => "save_edits", :via => "post" })

  # DELETE
  match("/delete_faction/:id_to_remove", { :controller => "factions", :action => "remove_row", :via => "get" })

  #------------------------------

  # Routes for the Leader resource:

  # CREATE
  match("/new_leader_form", { :controller => "leaders", :action => "blank_form", :via => "get" })
  match("/insert_leader_record", { :controller => "leaders", :action => "save_new_info", :via => "post" })

  # READ
  match("/leaders", { :controller => "leaders", :action => "list", :via => "get" })
  match("/leaders/:id_to_display", { :controller => "leaders", :action => "details", :via => "get" })

  # UPDATE
  match("/existing_leader_form/:id_to_prefill", { :controller => "leaders", :action => "prefilled_form", :via => "get" })
  match("/update_leader_record/:id_to_modify", { :controller => "leaders", :action => "save_edits", :via => "post" })

  # DELETE
  match("/delete_leader/:id_to_remove", { :controller => "leaders", :action => "remove_row", :via => "get" })

  #------------------------------

  # Routes for the Civ resource:

  # CREATE
  match("/new_civ_form", { :controller => "civs", :action => "blank_form", :via => "get" })
  match("/insert_civ_record", { :controller => "civs", :action => "save_new_info", :via => "post" })

  # READ
  match("/civs", { :controller => "civs", :action => "list", :via => "get" })
  match("/civs/:id_to_display", { :controller => "civs", :action => "details", :via => "get" })

  # UPDATE
  match("/existing_civ_form/:id_to_prefill", { :controller => "civs", :action => "prefilled_form", :via => "get" })
  match("/update_civ_record/:id_to_modify", { :controller => "civs", :action => "save_edits", :via => "post" })

  # DELETE
  match("/delete_civ/:id_to_remove", { :controller => "civs", :action => "remove_row", :via => "get" })

  #------------------------------

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
