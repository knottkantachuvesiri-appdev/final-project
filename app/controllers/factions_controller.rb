class FactionsController < ApplicationController
  def list
    @factions = Faction.all

    render("faction_templates/list.html.erb")
  end

  def details
    @faction = Faction.where({ :id => params.fetch("id_to_display") }).first

    render("faction_templates/details.html.erb")
  end

  def blank_form
    @faction = Faction.new
    @civs =Civ.all
    @leaders =Leader.all
    @scores = [0,1,2,3,4,5,6,7,8,9,10]    

    render("faction_templates/blank_form.html.erb")
  end

  def save_new_info
    @faction = Faction.new

    @faction.civ_id = params.fetch("civ_id")
    @faction.leader_id = params.fetch("leader_id")
    @faction.dom_score_land = params.fetch("dom_score_land")
    @faction.dom_score_water = params.fetch("dom_score_water")
    @faction.dom_def_land = params.fetch("dom_def_land")
    @faction.dom_def_water = params.fetch("dom_def_water")
    @faction.sci_score_land = params.fetch("sci_score_land")
    @faction.sci_score_water = params.fetch("sci_score_water")
    @faction.sci_def_land = params.fetch("sci_def_land")
    @faction.sci_def_water = params.fetch("sci_def_water")
    @faction.cul_score_land = params.fetch("cul_score_land")
    @faction.cul_score_water = params.fetch("cul_score_water")
    @faction.cul_def_land = params.fetch("cul_def_land")
    @faction.cul_def_water = params.fetch("cul_def_water")
    @faction.rel_score_land = params.fetch("rel_score_land")
    @faction.rel_score_water = params.fetch("rel_score_water")
    @faction.rel_def_land = params.fetch("rel_def_land")
    @faction.rel_def_water = params.fetch("rel_def_water")
    @faction.dip_score_land = params.fetch("dip_score_land")
    @faction.dip_score_water = params.fetch("dip_score_water")
    @faction.dip_def_land = params.fetch("dip_def_land")
    @faction.dip_def_water = params.fetch("dip_def_water")

    if @faction.valid?
      @faction.save

      redirect_to("/factions", { :notice => "Faction created successfully." })
    else
      render("faction_templates/blank_form.html.erb")
    end
  end

  def prefilled_form
    @faction = Faction.where({ :id => params.fetch("id_to_prefill") }).first
    @civs =Civ.all
    @leaders =Leader.all
    @scores = [0,1,2,3,4,5,6,7,8,9,10]

    render("faction_templates/prefilled_form.html.erb")
  end

  def save_edits
    @faction = Faction.where({ :id => params.fetch("id_to_modify") }).first

    @faction.civ_id = params.fetch("civ_id")
    @faction.leader_id = params.fetch("leader_id")
    @faction.dom_score_land = params.fetch("dom_score_land")
    @faction.dom_score_water = params.fetch("dom_score_water")
    @faction.dom_def_land = params.fetch("dom_def_land")
    @faction.dom_def_water = params.fetch("dom_def_water")
    @faction.sci_score_land = params.fetch("sci_score_land")
    @faction.sci_score_water = params.fetch("sci_score_water")
    @faction.sci_def_land = params.fetch("sci_def_land")
    @faction.sci_def_water = params.fetch("sci_def_water")
    @faction.cul_score_land = params.fetch("cul_score_land")
    @faction.cul_score_water = params.fetch("cul_score_water")
    @faction.cul_def_land = params.fetch("cul_def_land")
    @faction.cul_def_water = params.fetch("cul_def_water")
    @faction.rel_score_land = params.fetch("rel_score_land")
    @faction.rel_score_water = params.fetch("rel_score_water")
    @faction.rel_def_land = params.fetch("rel_def_land")
    @faction.rel_def_water = params.fetch("rel_def_water")
    @faction.dip_score_land = params.fetch("dip_score_land")
    @faction.dip_score_water = params.fetch("dip_score_water")
    @faction.dip_def_land = params.fetch("dip_def_land")
    @faction.dip_def_water = params.fetch("dip_def_water")

    if @faction.valid?
      @faction.save

      redirect_to("/factions/" + @faction.id.to_s, { :notice => "Faction updated successfully." })
    else
      render("faction_templates/prefilled_form.html.erb")
    end
  end

  def remove_row
    @faction = Faction.where({ :id => params.fetch("id_to_remove") }).first

    @faction.destroy

    redirect_to("/factions", { :notice => "Faction deleted successfully." })
  end
end
