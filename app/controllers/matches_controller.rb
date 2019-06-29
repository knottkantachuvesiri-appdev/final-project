class MatchesController < ApplicationController
  def list
    @matches = Match.all

    render("match_templates/list.html.erb")
  end

  def details
    @match = Match.where({ :id => params.fetch("id_to_display") }).first
    @factions = Faction.all  
    @maps = Map.all
    @ranks = [0,1,2,3,4,5,6,7,8,9] 

    
match_dom_score_land = (@match.faction01.dom_score_land+@match.faction02.dom_score_land+@match.faction03.dom_score_land+@match.faction04.dom_score_land+@match.faction05.dom_score_land+@match.faction06.dom_score_land+@match.faction07.dom_score_land)/7
match_dom_score_water = (@match.faction01.dom_score_water+@match.faction02.dom_score_water+@match.faction03.dom_score_water+@match.faction04.dom_score_water+@match.faction05.dom_score_water+@match.faction06.dom_score_water+@match.faction07.dom_score_water)/7
match_dom_def_land = (@match.faction01.dom_def_land+@match.faction02.dom_def_land+@match.faction03.dom_def_land+@match.faction04.dom_def_land+@match.faction05.dom_def_land+@match.faction06.dom_def_land+@match.faction07.dom_def_land)/7
match_dom_def_water = (@match.faction01.dom_def_water+@match.faction02.dom_def_water+@match.faction03.dom_def_water+@match.faction04.dom_def_water+@match.faction05.dom_def_water+@match.faction06.dom_def_water+@match.faction07.dom_def_water)/7

match_sci_score_land = (@match.faction01.sci_score_land+@match.faction02.sci_score_land+@match.faction03.sci_score_land+@match.faction04.sci_score_land+@match.faction05.sci_score_land+@match.faction06.sci_score_land+@match.faction07.sci_score_land)/7
match_sci_score_water = (@match.faction01.sci_score_water+@match.faction02.sci_score_water+@match.faction03.sci_score_water+@match.faction04.sci_score_water+@match.faction05.sci_score_water+@match.faction06.sci_score_water+@match.faction07.sci_score_water)/7
match_sci_def_land = (@match.faction01.sci_def_land+@match.faction02.sci_def_land+@match.faction03.sci_def_land+@match.faction04.sci_def_land+@match.faction05.sci_def_land+@match.faction06.sci_def_land+@match.faction07.sci_def_land)/7
match_sci_def_water = (@match.faction01.sci_def_water+@match.faction02.sci_def_water+@match.faction03.sci_def_water+@match.faction04.sci_def_water+@match.faction05.sci_def_water+@match.faction06.sci_def_water+@match.faction07.sci_def_water)/7

match_cul_score_land = (@match.faction01.cul_score_land+@match.faction02.cul_score_land+@match.faction03.cul_score_land+@match.faction04.cul_score_land+@match.faction05.cul_score_land+@match.faction06.cul_score_land+@match.faction07.cul_score_land)/7
match_cul_score_water = (@match.faction01.cul_score_water+@match.faction02.cul_score_water+@match.faction03.cul_score_water+@match.faction04.cul_score_water+@match.faction05.cul_score_water+@match.faction06.cul_score_water+@match.faction07.cul_score_water)/7
match_cul_def_land = (@match.faction01.cul_def_land+@match.faction02.cul_def_land+@match.faction03.cul_def_land+@match.faction04.cul_def_land+@match.faction05.cul_def_land+@match.faction06.cul_def_land+@match.faction07.cul_def_land)/7
match_cul_def_water = (@match.faction01.cul_def_water+@match.faction02.cul_def_water+@match.faction03.cul_def_water+@match.faction04.cul_def_water+@match.faction05.cul_def_water+@match.faction06.cul_def_water+@match.faction07.cul_def_water)/7

match_rel_score_land = (@match.faction01.rel_score_land+@match.faction02.rel_score_land+@match.faction03.rel_score_land+@match.faction04.rel_score_land+@match.faction05.rel_score_land+@match.faction06.rel_score_land+@match.faction07.rel_score_land)/7
match_rel_score_water = (@match.faction01.rel_score_water+@match.faction02.rel_score_water+@match.faction03.rel_score_water+@match.faction04.rel_score_water+@match.faction05.rel_score_water+@match.faction06.rel_score_water+@match.faction07.rel_score_water)/7
match_rel_def_land = (@match.faction01.rel_def_land+@match.faction02.rel_def_land+@match.faction03.rel_def_land+@match.faction04.rel_def_land+@match.faction05.rel_def_land+@match.faction06.rel_def_land+@match.faction07.rel_def_land)/7
match_rel_def_water = (@match.faction01.rel_def_water+@match.faction02.rel_def_water+@match.faction03.rel_def_water+@match.faction04.rel_def_water+@match.faction05.rel_def_water+@match.faction06.rel_def_water+@match.faction07.rel_def_water)/7

match_dip_score_land = (@match.faction01.dip_score_land+@match.faction02.dip_score_land+@match.faction03.dip_score_land+@match.faction04.dip_score_land+@match.faction05.dip_score_land+@match.faction06.dip_score_land+@match.faction07.dip_score_land)/7
match_dip_score_water = (@match.faction01.dip_score_water+@match.faction02.dip_score_water+@match.faction03.dip_score_water+@match.faction04.dip_score_water+@match.faction05.dip_score_water+@match.faction06.dip_score_water+@match.faction07.dip_score_water)/7
match_dip_def_land = (@match.faction01.dip_def_land+@match.faction02.dip_def_land+@match.faction03.dip_def_land+@match.faction04.dip_def_land+@match.faction05.dip_def_land+@match.faction06.dip_def_land+@match.faction07.dip_def_land)/7
match_dip_def_water = (@match.faction01.dip_def_water+@match.faction02.dip_def_water+@match.faction03.dip_def_water+@match.faction04.dip_def_water+@match.faction05.dip_def_water+@match.faction06.dip_def_water+@match.faction07.dip_def_water)/7


    
    @score_table = Array.new
    
    @factions.each do |faction|
    
      faction_calc=Hash.new
      faction_calc.store(:faction_id, faction.id)
      faction_calc.store(:faction_name, Faction.where({:id => faction.id}).first.civ.name + " - " + Faction.where({:id => faction.id}).first.leader.name)
      
      #faction_calc.store(:faction_dom_score_land, faction.dom_score_land-match_dom_def_land)
      #faction_calc.store(:faction_dom_def_land, faction.dom_def_land-match_dom_score_land)
      #faction_calc.store(:faction_dom_score_water, faction.dom_score_water-match_dom_def_water)
      #faction_calc.store(:faction_dom_def_water, faction.dom_def_water-match_dom_score_water)

      #faction_calc.store(:faction_sci_score_land, faction.sci_score_land-match_sci_def_land)
      #faction_calc.store(:faction_sci_def_land, faction.sci_def_land-match_sci_score_land)
      #faction_calc.store(:faction_sci_score_water, faction.sci_score_water-match_sci_def_water)
      #faction_calc.store(:faction_sci_def_water, faction.sci_def_water-match_sci_score_water)

      #faction_calc.store(:faction_cul_score_land, faction.cul_score_land-match_cul_def_land)
      #faction_calc.store(:faction_cul_def_land, faction.cul_def_land-match_cul_score_land)
      #faction_calc.store(:faction_cul_score_water, faction.cul_score_water-match_cul_def_water)
      #faction_calc.store(:faction_cul_def_water, faction.cul_def_water-match_cul_score_water)

      #faction_calc.store(:faction_rel_score_land, faction.rel_score_land-match_rel_def_land)
      #faction_calc.store(:faction_rel_def_land, faction.rel_def_land-match_rel_score_land)
      #faction_calc.store(:faction_rel_score_water, faction.rel_score_water-match_rel_def_water)
      #faction_calc.store(:faction_rel_def_water, faction.rel_def_water-match_rel_score_water)

      #faction_calc.store(:faction_dip_score_land, faction.dip_score_land-match_dip_def_land)
      #faction_calc.store(:faction_dip_def_land, faction.dip_def_land-match_dip_score_land)
      #faction_calc.store(:faction_dip_score_water, faction.dip_score_water-match_dip_def_water)
      #faction_calc.store(:faction_dip_def_water, faction.dip_def_water-match_dip_score_water)
      
      faction_calc.store(:faction_overall_score, [(faction.dom_score_land-match_dom_def_land)*@match.map.land_weight,(faction.dom_def_land-match_dom_score_land)*@match.map.land_weight,(faction.dom_score_water-match_dom_def_water)*@match.map.water_weight,(faction.dom_def_water-match_dom_score_water)*@match.map.water_weight,(faction.sci_score_land-match_sci_def_land)*@match.map.land_weight,(faction.sci_def_land-match_sci_score_land)*@match.map.land_weight,(faction.sci_score_water-match_sci_def_water)*@match.map.water_weight,(faction.sci_def_water-match_sci_score_water)*@match.map.water_weight,(faction.cul_score_land-match_cul_def_land)*@match.map.land_weight,(faction.cul_def_land-match_cul_score_land)*@match.map.land_weight,(faction.cul_score_water-match_cul_def_water)*@match.map.water_weight,(faction.cul_def_water-match_cul_score_water)*@match.map.water_weight,(faction.rel_score_land-match_rel_def_land)*@match.map.land_weight,(faction.rel_def_land-match_rel_score_land)*@match.map.land_weight,(faction.rel_score_water-match_rel_def_water)*@match.map.water_weight,(faction.rel_def_water-match_rel_score_water)*@match.map.water_weight,(faction.dip_score_land-match_dip_def_land)*@match.map.land_weight,(faction.dip_def_land-match_dip_score_land)*@match.map.land_weight,(faction.dip_score_water-match_dip_def_water)*@match.map.water_weight,(faction.dip_def_water-match_dip_score_water)*@match.map.water_weight].max+[(faction.dom_score_land-match_dom_def_land)*@match.map.land_weight,(faction.dom_def_land-match_dom_score_land)*@match.map.land_weight,(faction.dom_score_water-match_dom_def_water)*@match.map.water_weight,(faction.dom_def_water-match_dom_score_water)*@match.map.water_weight,(faction.sci_score_land-match_sci_def_land)*@match.map.land_weight,(faction.sci_def_land-match_sci_score_land)*@match.map.land_weight,(faction.sci_score_water-match_sci_def_water)*@match.map.water_weight,(faction.sci_def_water-match_sci_score_water)*@match.map.water_weight,(faction.cul_score_land-match_cul_def_land)*@match.map.land_weight,(faction.cul_def_land-match_cul_score_land)*@match.map.land_weight,(faction.cul_score_water-match_cul_def_water)*@match.map.water_weight,(faction.cul_def_water-match_cul_score_water)*@match.map.water_weight,(faction.rel_score_land-match_rel_def_land)*@match.map.land_weight,(faction.rel_def_land-match_rel_score_land)*@match.map.land_weight,(faction.rel_score_water-match_rel_def_water)*@match.map.water_weight,(faction.rel_def_water-match_rel_score_water)*@match.map.water_weight,(faction.dip_score_land-match_dip_def_land)*@match.map.land_weight,(faction.dip_def_land-match_dip_score_land)*@match.map.land_weight,(faction.dip_score_water-match_dip_def_water)*@match.map.water_weight,(faction.dip_def_water-match_dip_score_water)*@match.map.water_weight].sort[-2]+[(faction.dom_score_land-match_dom_def_land)*@match.map.land_weight,(faction.dom_def_land-match_dom_score_land)*@match.map.land_weight,(faction.dom_score_water-match_dom_def_water)*@match.map.water_weight,(faction.dom_def_water-match_dom_score_water)*@match.map.water_weight,(faction.sci_score_land-match_sci_def_land)*@match.map.land_weight,(faction.sci_def_land-match_sci_score_land)*@match.map.land_weight,(faction.sci_score_water-match_sci_def_water)*@match.map.water_weight,(faction.sci_def_water-match_sci_score_water)*@match.map.water_weight,(faction.cul_score_land-match_cul_def_land)*@match.map.land_weight,(faction.cul_def_land-match_cul_score_land)*@match.map.land_weight,(faction.cul_score_water-match_cul_def_water)*@match.map.water_weight,(faction.cul_def_water-match_cul_score_water)*@match.map.water_weight,(faction.rel_score_land-match_rel_def_land)*@match.map.land_weight,(faction.rel_def_land-match_rel_score_land)*@match.map.land_weight,(faction.rel_score_water-match_rel_def_water)*@match.map.water_weight,(faction.rel_def_water-match_rel_score_water)*@match.map.water_weight,(faction.dip_score_land-match_dip_def_land)*@match.map.land_weight,(faction.dip_def_land-match_dip_score_land)*@match.map.land_weight,(faction.dip_score_water-match_dip_def_water)*@match.map.water_weight,(faction.dip_def_water-match_dip_score_water)*@match.map.water_weight].sort[-3]+[(faction.dom_score_land-match_dom_def_land)*@match.map.land_weight,(faction.dom_def_land-match_dom_score_land)*@match.map.land_weight,(faction.dom_score_water-match_dom_def_water)*@match.map.water_weight,(faction.dom_def_water-match_dom_score_water)*@match.map.water_weight,(faction.sci_score_land-match_sci_def_land)*@match.map.land_weight,(faction.sci_def_land-match_sci_score_land)*@match.map.land_weight,(faction.sci_score_water-match_sci_def_water)*@match.map.water_weight,(faction.sci_def_water-match_sci_score_water)*@match.map.water_weight,(faction.cul_score_land-match_cul_def_land)*@match.map.land_weight,(faction.cul_def_land-match_cul_score_land)*@match.map.land_weight,(faction.cul_score_water-match_cul_def_water)*@match.map.water_weight,(faction.cul_def_water-match_cul_score_water)*@match.map.water_weight,(faction.rel_score_land-match_rel_def_land)*@match.map.land_weight,(faction.rel_def_land-match_rel_score_land)*@match.map.land_weight,(faction.rel_score_water-match_rel_def_water)*@match.map.water_weight,(faction.rel_def_water-match_rel_score_water)*@match.map.water_weight,(faction.dip_score_land-match_dip_def_land)*@match.map.land_weight,(faction.dip_def_land-match_dip_score_land)*@match.map.land_weight,(faction.dip_score_water-match_dip_def_water)*@match.map.water_weight,(faction.dip_def_water-match_dip_score_water)*@match.map.water_weight].sort[-4]+[(faction.dom_score_land-match_dom_def_land)*@match.map.land_weight,(faction.dom_def_land-match_dom_score_land)*@match.map.land_weight,(faction.dom_score_water-match_dom_def_water)*@match.map.water_weight,(faction.dom_def_water-match_dom_score_water)*@match.map.water_weight,(faction.sci_score_land-match_sci_def_land)*@match.map.land_weight,(faction.sci_def_land-match_sci_score_land)*@match.map.land_weight,(faction.sci_score_water-match_sci_def_water)*@match.map.water_weight,(faction.sci_def_water-match_sci_score_water)*@match.map.water_weight,(faction.cul_score_land-match_cul_def_land)*@match.map.land_weight,(faction.cul_def_land-match_cul_score_land)*@match.map.land_weight,(faction.cul_score_water-match_cul_def_water)*@match.map.water_weight,(faction.cul_def_water-match_cul_score_water)*@match.map.water_weight,(faction.rel_score_land-match_rel_def_land)*@match.map.land_weight,(faction.rel_def_land-match_rel_score_land)*@match.map.land_weight,(faction.rel_score_water-match_rel_def_water)*@match.map.water_weight,(faction.rel_def_water-match_rel_score_water)*@match.map.water_weight,(faction.dip_score_land-match_dip_def_land)*@match.map.land_weight,(faction.dip_def_land-match_dip_score_land)*@match.map.land_weight,(faction.dip_score_water-match_dip_def_water)*@match.map.water_weight,(faction.dip_def_water-match_dip_score_water)*@match.map.water_weight].sort[-5]+[(faction.dom_score_land-match_dom_def_land)*@match.map.land_weight,(faction.dom_def_land-match_dom_score_land)*@match.map.land_weight,(faction.dom_score_water-match_dom_def_water)*@match.map.water_weight,(faction.dom_def_water-match_dom_score_water)*@match.map.water_weight,(faction.sci_score_land-match_sci_def_land)*@match.map.land_weight,(faction.sci_def_land-match_sci_score_land)*@match.map.land_weight,(faction.sci_score_water-match_sci_def_water)*@match.map.water_weight,(faction.sci_def_water-match_sci_score_water)*@match.map.water_weight,(faction.cul_score_land-match_cul_def_land)*@match.map.land_weight,(faction.cul_def_land-match_cul_score_land)*@match.map.land_weight,(faction.cul_score_water-match_cul_def_water)*@match.map.water_weight,(faction.cul_def_water-match_cul_score_water)*@match.map.water_weight,(faction.rel_score_land-match_rel_def_land)*@match.map.land_weight,(faction.rel_def_land-match_rel_score_land)*@match.map.land_weight,(faction.rel_score_water-match_rel_def_water)*@match.map.water_weight,(faction.rel_def_water-match_rel_score_water)*@match.map.water_weight,(faction.dip_score_land-match_dip_def_land)*@match.map.land_weight,(faction.dip_def_land-match_dip_score_land)*@match.map.land_weight,(faction.dip_score_water-match_dip_def_water)*@match.map.water_weight,(faction.dip_def_water-match_dip_score_water)*@match.map.water_weight].sort[0]+[(faction.dom_score_land-match_dom_def_land)*@match.map.land_weight,(faction.dom_def_land-match_dom_score_land)*@match.map.land_weight,(faction.dom_score_water-match_dom_def_water)*@match.map.water_weight,(faction.dom_def_water-match_dom_score_water)*@match.map.water_weight,(faction.sci_score_land-match_sci_def_land)*@match.map.land_weight,(faction.sci_def_land-match_sci_score_land)*@match.map.land_weight,(faction.sci_score_water-match_sci_def_water)*@match.map.water_weight,(faction.sci_def_water-match_sci_score_water)*@match.map.water_weight,(faction.cul_score_land-match_cul_def_land)*@match.map.land_weight,(faction.cul_def_land-match_cul_score_land)*@match.map.land_weight,(faction.cul_score_water-match_cul_def_water)*@match.map.water_weight,(faction.cul_def_water-match_cul_score_water)*@match.map.water_weight,(faction.rel_score_land-match_rel_def_land)*@match.map.land_weight,(faction.rel_def_land-match_rel_score_land)*@match.map.land_weight,(faction.rel_score_water-match_rel_def_water)*@match.map.water_weight,(faction.rel_def_water-match_rel_score_water)*@match.map.water_weight,(faction.dip_score_land-match_dip_def_land)*@match.map.land_weight,(faction.dip_def_land-match_dip_score_land)*@match.map.land_weight,(faction.dip_score_water-match_dip_def_water)*@match.map.water_weight,(faction.dip_def_water-match_dip_score_water)*@match.map.water_weight].sort[1]+[(faction.dom_score_land-match_dom_def_land)*@match.map.land_weight,(faction.dom_def_land-match_dom_score_land)*@match.map.land_weight,(faction.dom_score_water-match_dom_def_water)*@match.map.water_weight,(faction.dom_def_water-match_dom_score_water)*@match.map.water_weight,(faction.sci_score_land-match_sci_def_land)*@match.map.land_weight,(faction.sci_def_land-match_sci_score_land)*@match.map.land_weight,(faction.sci_score_water-match_sci_def_water)*@match.map.water_weight,(faction.sci_def_water-match_sci_score_water)*@match.map.water_weight,(faction.cul_score_land-match_cul_def_land)*@match.map.land_weight,(faction.cul_def_land-match_cul_score_land)*@match.map.land_weight,(faction.cul_score_water-match_cul_def_water)*@match.map.water_weight,(faction.cul_def_water-match_cul_score_water)*@match.map.water_weight,(faction.rel_score_land-match_rel_def_land)*@match.map.land_weight,(faction.rel_def_land-match_rel_score_land)*@match.map.land_weight,(faction.rel_score_water-match_rel_def_water)*@match.map.water_weight,(faction.rel_def_water-match_rel_score_water)*@match.map.water_weight,(faction.dip_score_land-match_dip_def_land)*@match.map.land_weight,(faction.dip_def_land-match_dip_score_land)*@match.map.land_weight,(faction.dip_score_water-match_dip_def_water)*@match.map.water_weight,(faction.dip_def_water-match_dip_score_water)*@match.map.water_weight].sort[2]+[(faction.dom_score_land-match_dom_def_land)*@match.map.land_weight,(faction.dom_def_land-match_dom_score_land)*@match.map.land_weight,(faction.dom_score_water-match_dom_def_water)*@match.map.water_weight,(faction.dom_def_water-match_dom_score_water)*@match.map.water_weight,(faction.sci_score_land-match_sci_def_land)*@match.map.land_weight,(faction.sci_def_land-match_sci_score_land)*@match.map.land_weight,(faction.sci_score_water-match_sci_def_water)*@match.map.water_weight,(faction.sci_def_water-match_sci_score_water)*@match.map.water_weight,(faction.cul_score_land-match_cul_def_land)*@match.map.land_weight,(faction.cul_def_land-match_cul_score_land)*@match.map.land_weight,(faction.cul_score_water-match_cul_def_water)*@match.map.water_weight,(faction.cul_def_water-match_cul_score_water)*@match.map.water_weight,(faction.rel_score_land-match_rel_def_land)*@match.map.land_weight,(faction.rel_def_land-match_rel_score_land)*@match.map.land_weight,(faction.rel_score_water-match_rel_def_water)*@match.map.water_weight,(faction.rel_def_water-match_rel_score_water)*@match.map.water_weight,(faction.dip_score_land-match_dip_def_land)*@match.map.land_weight,(faction.dip_def_land-match_dip_score_land)*@match.map.land_weight,(faction.dip_score_water-match_dip_def_water)*@match.map.water_weight,(faction.dip_def_water-match_dip_score_water)*@match.map.water_weight].sort[3]+[(faction.dom_score_land-match_dom_def_land)*@match.map.land_weight,(faction.dom_def_land-match_dom_score_land)*@match.map.land_weight,(faction.dom_score_water-match_dom_def_water)*@match.map.water_weight,(faction.dom_def_water-match_dom_score_water)*@match.map.water_weight,(faction.sci_score_land-match_sci_def_land)*@match.map.land_weight,(faction.sci_def_land-match_sci_score_land)*@match.map.land_weight,(faction.sci_score_water-match_sci_def_water)*@match.map.water_weight,(faction.sci_def_water-match_sci_score_water)*@match.map.water_weight,(faction.cul_score_land-match_cul_def_land)*@match.map.land_weight,(faction.cul_def_land-match_cul_score_land)*@match.map.land_weight,(faction.cul_score_water-match_cul_def_water)*@match.map.water_weight,(faction.cul_def_water-match_cul_score_water)*@match.map.water_weight,(faction.rel_score_land-match_rel_def_land)*@match.map.land_weight,(faction.rel_def_land-match_rel_score_land)*@match.map.land_weight,(faction.rel_score_water-match_rel_def_water)*@match.map.water_weight,(faction.rel_def_water-match_rel_score_water)*@match.map.water_weight,(faction.dip_score_land-match_dip_def_land)*@match.map.land_weight,(faction.dip_def_land-match_dip_score_land)*@match.map.land_weight,(faction.dip_score_water-match_dip_def_water)*@match.map.water_weight,(faction.dip_def_water-match_dip_score_water)*@match.map.water_weight].sort[4])

      @score_table.push(faction_calc)
        
    end
    
   @sorted_score_table = @score_table.sort_by do |k|
      -k[:faction_overall_score]
      
  
    end
    
    render("match_templates/details.html.erb")
  end

  def blank_form
    @match = Match.new
    @factions = Faction.all
    @maps = Map.all

    render("match_templates/blank_form.html.erb")
  end

  def save_new_info
    @match = Match.new

    @match.map_id = params.fetch("map_id")
    @match.faction01_id = params.fetch("faction01_id")
    @match.faction02_id = params.fetch("faction02_id")
    @match.faction03_id = params.fetch("faction03_id")
    @match.faction04_id = params.fetch("faction04_id")
    @match.faction05_id = params.fetch("faction05_id")
    @match.faction06_id = params.fetch("faction06_id")
    @match.faction07_id = params.fetch("faction07_id")
    @match.owner_id = current_user.id

    


    if @match.valid?
      @match.save

      redirect_to("/existing_match_form/"+@match.id.to_s, { :notice => "Match created successfully." })
    else
      render("match_templates/blank_form.html.erb")
    end
  end

  def prefilled_form
    @match = Match.where({ :id => params.fetch("id_to_prefill") }).first
    @factions = Faction.all  
    @maps = Map.all
    @ranks = [0,1,2,3,4,5,6,7,8,9] 

    
match_dom_score_land = (@match.faction01.dom_score_land+@match.faction02.dom_score_land+@match.faction03.dom_score_land+@match.faction04.dom_score_land+@match.faction05.dom_score_land+@match.faction06.dom_score_land+@match.faction07.dom_score_land)/7
match_dom_score_water = (@match.faction01.dom_score_water+@match.faction02.dom_score_water+@match.faction03.dom_score_water+@match.faction04.dom_score_water+@match.faction05.dom_score_water+@match.faction06.dom_score_water+@match.faction07.dom_score_water)/7
match_dom_def_land = (@match.faction01.dom_def_land+@match.faction02.dom_def_land+@match.faction03.dom_def_land+@match.faction04.dom_def_land+@match.faction05.dom_def_land+@match.faction06.dom_def_land+@match.faction07.dom_def_land)/7
match_dom_def_water = (@match.faction01.dom_def_water+@match.faction02.dom_def_water+@match.faction03.dom_def_water+@match.faction04.dom_def_water+@match.faction05.dom_def_water+@match.faction06.dom_def_water+@match.faction07.dom_def_water)/7

match_sci_score_land = (@match.faction01.sci_score_land+@match.faction02.sci_score_land+@match.faction03.sci_score_land+@match.faction04.sci_score_land+@match.faction05.sci_score_land+@match.faction06.sci_score_land+@match.faction07.sci_score_land)/7
match_sci_score_water = (@match.faction01.sci_score_water+@match.faction02.sci_score_water+@match.faction03.sci_score_water+@match.faction04.sci_score_water+@match.faction05.sci_score_water+@match.faction06.sci_score_water+@match.faction07.sci_score_water)/7
match_sci_def_land = (@match.faction01.sci_def_land+@match.faction02.sci_def_land+@match.faction03.sci_def_land+@match.faction04.sci_def_land+@match.faction05.sci_def_land+@match.faction06.sci_def_land+@match.faction07.sci_def_land)/7
match_sci_def_water = (@match.faction01.sci_def_water+@match.faction02.sci_def_water+@match.faction03.sci_def_water+@match.faction04.sci_def_water+@match.faction05.sci_def_water+@match.faction06.sci_def_water+@match.faction07.sci_def_water)/7

match_cul_score_land = (@match.faction01.cul_score_land+@match.faction02.cul_score_land+@match.faction03.cul_score_land+@match.faction04.cul_score_land+@match.faction05.cul_score_land+@match.faction06.cul_score_land+@match.faction07.cul_score_land)/7
match_cul_score_water = (@match.faction01.cul_score_water+@match.faction02.cul_score_water+@match.faction03.cul_score_water+@match.faction04.cul_score_water+@match.faction05.cul_score_water+@match.faction06.cul_score_water+@match.faction07.cul_score_water)/7
match_cul_def_land = (@match.faction01.cul_def_land+@match.faction02.cul_def_land+@match.faction03.cul_def_land+@match.faction04.cul_def_land+@match.faction05.cul_def_land+@match.faction06.cul_def_land+@match.faction07.cul_def_land)/7
match_cul_def_water = (@match.faction01.cul_def_water+@match.faction02.cul_def_water+@match.faction03.cul_def_water+@match.faction04.cul_def_water+@match.faction05.cul_def_water+@match.faction06.cul_def_water+@match.faction07.cul_def_water)/7

match_rel_score_land = (@match.faction01.rel_score_land+@match.faction02.rel_score_land+@match.faction03.rel_score_land+@match.faction04.rel_score_land+@match.faction05.rel_score_land+@match.faction06.rel_score_land+@match.faction07.rel_score_land)/7
match_rel_score_water = (@match.faction01.rel_score_water+@match.faction02.rel_score_water+@match.faction03.rel_score_water+@match.faction04.rel_score_water+@match.faction05.rel_score_water+@match.faction06.rel_score_water+@match.faction07.rel_score_water)/7
match_rel_def_land = (@match.faction01.rel_def_land+@match.faction02.rel_def_land+@match.faction03.rel_def_land+@match.faction04.rel_def_land+@match.faction05.rel_def_land+@match.faction06.rel_def_land+@match.faction07.rel_def_land)/7
match_rel_def_water = (@match.faction01.rel_def_water+@match.faction02.rel_def_water+@match.faction03.rel_def_water+@match.faction04.rel_def_water+@match.faction05.rel_def_water+@match.faction06.rel_def_water+@match.faction07.rel_def_water)/7

match_dip_score_land = (@match.faction01.dip_score_land+@match.faction02.dip_score_land+@match.faction03.dip_score_land+@match.faction04.dip_score_land+@match.faction05.dip_score_land+@match.faction06.dip_score_land+@match.faction07.dip_score_land)/7
match_dip_score_water = (@match.faction01.dip_score_water+@match.faction02.dip_score_water+@match.faction03.dip_score_water+@match.faction04.dip_score_water+@match.faction05.dip_score_water+@match.faction06.dip_score_water+@match.faction07.dip_score_water)/7
match_dip_def_land = (@match.faction01.dip_def_land+@match.faction02.dip_def_land+@match.faction03.dip_def_land+@match.faction04.dip_def_land+@match.faction05.dip_def_land+@match.faction06.dip_def_land+@match.faction07.dip_def_land)/7
match_dip_def_water = (@match.faction01.dip_def_water+@match.faction02.dip_def_water+@match.faction03.dip_def_water+@match.faction04.dip_def_water+@match.faction05.dip_def_water+@match.faction06.dip_def_water+@match.faction07.dip_def_water)/7


    
    @score_table = Array.new
    
    @factions.each do |faction|
    
      faction_calc=Hash.new
      faction_calc.store(:faction_id, faction.id)
      faction_calc.store(:faction_name, Faction.where({:id => faction.id}).first.civ.name + " - " + Faction.where({:id => faction.id}).first.leader.name)
      
      #faction_calc.store(:faction_dom_score_land, faction.dom_score_land-match_dom_def_land)
      #faction_calc.store(:faction_dom_def_land, faction.dom_def_land-match_dom_score_land)
      #faction_calc.store(:faction_dom_score_water, faction.dom_score_water-match_dom_def_water)
      #faction_calc.store(:faction_dom_def_water, faction.dom_def_water-match_dom_score_water)

      #faction_calc.store(:faction_sci_score_land, faction.sci_score_land-match_sci_def_land)
      #faction_calc.store(:faction_sci_def_land, faction.sci_def_land-match_sci_score_land)
      #faction_calc.store(:faction_sci_score_water, faction.sci_score_water-match_sci_def_water)
      #faction_calc.store(:faction_sci_def_water, faction.sci_def_water-match_sci_score_water)

      #faction_calc.store(:faction_cul_score_land, faction.cul_score_land-match_cul_def_land)
      #faction_calc.store(:faction_cul_def_land, faction.cul_def_land-match_cul_score_land)
      #faction_calc.store(:faction_cul_score_water, faction.cul_score_water-match_cul_def_water)
      #faction_calc.store(:faction_cul_def_water, faction.cul_def_water-match_cul_score_water)

      #faction_calc.store(:faction_rel_score_land, faction.rel_score_land-match_rel_def_land)
      #faction_calc.store(:faction_rel_def_land, faction.rel_def_land-match_rel_score_land)
      #faction_calc.store(:faction_rel_score_water, faction.rel_score_water-match_rel_def_water)
      #faction_calc.store(:faction_rel_def_water, faction.rel_def_water-match_rel_score_water)

      #faction_calc.store(:faction_dip_score_land, faction.dip_score_land-match_dip_def_land)
      #faction_calc.store(:faction_dip_def_land, faction.dip_def_land-match_dip_score_land)
      #faction_calc.store(:faction_dip_score_water, faction.dip_score_water-match_dip_def_water)
      #faction_calc.store(:faction_dip_def_water, faction.dip_def_water-match_dip_score_water)
      
      faction_calc.store(:faction_overall_score, [(faction.dom_score_land-match_dom_def_land)*@match.map.land_weight,(faction.dom_def_land-match_dom_score_land)*@match.map.land_weight,(faction.dom_score_water-match_dom_def_water)*@match.map.water_weight,(faction.dom_def_water-match_dom_score_water)*@match.map.water_weight,(faction.sci_score_land-match_sci_def_land)*@match.map.land_weight,(faction.sci_def_land-match_sci_score_land)*@match.map.land_weight,(faction.sci_score_water-match_sci_def_water)*@match.map.water_weight,(faction.sci_def_water-match_sci_score_water)*@match.map.water_weight,(faction.cul_score_land-match_cul_def_land)*@match.map.land_weight,(faction.cul_def_land-match_cul_score_land)*@match.map.land_weight,(faction.cul_score_water-match_cul_def_water)*@match.map.water_weight,(faction.cul_def_water-match_cul_score_water)*@match.map.water_weight,(faction.rel_score_land-match_rel_def_land)*@match.map.land_weight,(faction.rel_def_land-match_rel_score_land)*@match.map.land_weight,(faction.rel_score_water-match_rel_def_water)*@match.map.water_weight,(faction.rel_def_water-match_rel_score_water)*@match.map.water_weight,(faction.dip_score_land-match_dip_def_land)*@match.map.land_weight,(faction.dip_def_land-match_dip_score_land)*@match.map.land_weight,(faction.dip_score_water-match_dip_def_water)*@match.map.water_weight,(faction.dip_def_water-match_dip_score_water)*@match.map.water_weight].max+[(faction.dom_score_land-match_dom_def_land)*@match.map.land_weight,(faction.dom_def_land-match_dom_score_land)*@match.map.land_weight,(faction.dom_score_water-match_dom_def_water)*@match.map.water_weight,(faction.dom_def_water-match_dom_score_water)*@match.map.water_weight,(faction.sci_score_land-match_sci_def_land)*@match.map.land_weight,(faction.sci_def_land-match_sci_score_land)*@match.map.land_weight,(faction.sci_score_water-match_sci_def_water)*@match.map.water_weight,(faction.sci_def_water-match_sci_score_water)*@match.map.water_weight,(faction.cul_score_land-match_cul_def_land)*@match.map.land_weight,(faction.cul_def_land-match_cul_score_land)*@match.map.land_weight,(faction.cul_score_water-match_cul_def_water)*@match.map.water_weight,(faction.cul_def_water-match_cul_score_water)*@match.map.water_weight,(faction.rel_score_land-match_rel_def_land)*@match.map.land_weight,(faction.rel_def_land-match_rel_score_land)*@match.map.land_weight,(faction.rel_score_water-match_rel_def_water)*@match.map.water_weight,(faction.rel_def_water-match_rel_score_water)*@match.map.water_weight,(faction.dip_score_land-match_dip_def_land)*@match.map.land_weight,(faction.dip_def_land-match_dip_score_land)*@match.map.land_weight,(faction.dip_score_water-match_dip_def_water)*@match.map.water_weight,(faction.dip_def_water-match_dip_score_water)*@match.map.water_weight].sort[-2]+[(faction.dom_score_land-match_dom_def_land)*@match.map.land_weight,(faction.dom_def_land-match_dom_score_land)*@match.map.land_weight,(faction.dom_score_water-match_dom_def_water)*@match.map.water_weight,(faction.dom_def_water-match_dom_score_water)*@match.map.water_weight,(faction.sci_score_land-match_sci_def_land)*@match.map.land_weight,(faction.sci_def_land-match_sci_score_land)*@match.map.land_weight,(faction.sci_score_water-match_sci_def_water)*@match.map.water_weight,(faction.sci_def_water-match_sci_score_water)*@match.map.water_weight,(faction.cul_score_land-match_cul_def_land)*@match.map.land_weight,(faction.cul_def_land-match_cul_score_land)*@match.map.land_weight,(faction.cul_score_water-match_cul_def_water)*@match.map.water_weight,(faction.cul_def_water-match_cul_score_water)*@match.map.water_weight,(faction.rel_score_land-match_rel_def_land)*@match.map.land_weight,(faction.rel_def_land-match_rel_score_land)*@match.map.land_weight,(faction.rel_score_water-match_rel_def_water)*@match.map.water_weight,(faction.rel_def_water-match_rel_score_water)*@match.map.water_weight,(faction.dip_score_land-match_dip_def_land)*@match.map.land_weight,(faction.dip_def_land-match_dip_score_land)*@match.map.land_weight,(faction.dip_score_water-match_dip_def_water)*@match.map.water_weight,(faction.dip_def_water-match_dip_score_water)*@match.map.water_weight].sort[-3]+[(faction.dom_score_land-match_dom_def_land)*@match.map.land_weight,(faction.dom_def_land-match_dom_score_land)*@match.map.land_weight,(faction.dom_score_water-match_dom_def_water)*@match.map.water_weight,(faction.dom_def_water-match_dom_score_water)*@match.map.water_weight,(faction.sci_score_land-match_sci_def_land)*@match.map.land_weight,(faction.sci_def_land-match_sci_score_land)*@match.map.land_weight,(faction.sci_score_water-match_sci_def_water)*@match.map.water_weight,(faction.sci_def_water-match_sci_score_water)*@match.map.water_weight,(faction.cul_score_land-match_cul_def_land)*@match.map.land_weight,(faction.cul_def_land-match_cul_score_land)*@match.map.land_weight,(faction.cul_score_water-match_cul_def_water)*@match.map.water_weight,(faction.cul_def_water-match_cul_score_water)*@match.map.water_weight,(faction.rel_score_land-match_rel_def_land)*@match.map.land_weight,(faction.rel_def_land-match_rel_score_land)*@match.map.land_weight,(faction.rel_score_water-match_rel_def_water)*@match.map.water_weight,(faction.rel_def_water-match_rel_score_water)*@match.map.water_weight,(faction.dip_score_land-match_dip_def_land)*@match.map.land_weight,(faction.dip_def_land-match_dip_score_land)*@match.map.land_weight,(faction.dip_score_water-match_dip_def_water)*@match.map.water_weight,(faction.dip_def_water-match_dip_score_water)*@match.map.water_weight].sort[-4]+[(faction.dom_score_land-match_dom_def_land)*@match.map.land_weight,(faction.dom_def_land-match_dom_score_land)*@match.map.land_weight,(faction.dom_score_water-match_dom_def_water)*@match.map.water_weight,(faction.dom_def_water-match_dom_score_water)*@match.map.water_weight,(faction.sci_score_land-match_sci_def_land)*@match.map.land_weight,(faction.sci_def_land-match_sci_score_land)*@match.map.land_weight,(faction.sci_score_water-match_sci_def_water)*@match.map.water_weight,(faction.sci_def_water-match_sci_score_water)*@match.map.water_weight,(faction.cul_score_land-match_cul_def_land)*@match.map.land_weight,(faction.cul_def_land-match_cul_score_land)*@match.map.land_weight,(faction.cul_score_water-match_cul_def_water)*@match.map.water_weight,(faction.cul_def_water-match_cul_score_water)*@match.map.water_weight,(faction.rel_score_land-match_rel_def_land)*@match.map.land_weight,(faction.rel_def_land-match_rel_score_land)*@match.map.land_weight,(faction.rel_score_water-match_rel_def_water)*@match.map.water_weight,(faction.rel_def_water-match_rel_score_water)*@match.map.water_weight,(faction.dip_score_land-match_dip_def_land)*@match.map.land_weight,(faction.dip_def_land-match_dip_score_land)*@match.map.land_weight,(faction.dip_score_water-match_dip_def_water)*@match.map.water_weight,(faction.dip_def_water-match_dip_score_water)*@match.map.water_weight].sort[-5]+[(faction.dom_score_land-match_dom_def_land)*@match.map.land_weight,(faction.dom_def_land-match_dom_score_land)*@match.map.land_weight,(faction.dom_score_water-match_dom_def_water)*@match.map.water_weight,(faction.dom_def_water-match_dom_score_water)*@match.map.water_weight,(faction.sci_score_land-match_sci_def_land)*@match.map.land_weight,(faction.sci_def_land-match_sci_score_land)*@match.map.land_weight,(faction.sci_score_water-match_sci_def_water)*@match.map.water_weight,(faction.sci_def_water-match_sci_score_water)*@match.map.water_weight,(faction.cul_score_land-match_cul_def_land)*@match.map.land_weight,(faction.cul_def_land-match_cul_score_land)*@match.map.land_weight,(faction.cul_score_water-match_cul_def_water)*@match.map.water_weight,(faction.cul_def_water-match_cul_score_water)*@match.map.water_weight,(faction.rel_score_land-match_rel_def_land)*@match.map.land_weight,(faction.rel_def_land-match_rel_score_land)*@match.map.land_weight,(faction.rel_score_water-match_rel_def_water)*@match.map.water_weight,(faction.rel_def_water-match_rel_score_water)*@match.map.water_weight,(faction.dip_score_land-match_dip_def_land)*@match.map.land_weight,(faction.dip_def_land-match_dip_score_land)*@match.map.land_weight,(faction.dip_score_water-match_dip_def_water)*@match.map.water_weight,(faction.dip_def_water-match_dip_score_water)*@match.map.water_weight].sort[0]+[(faction.dom_score_land-match_dom_def_land)*@match.map.land_weight,(faction.dom_def_land-match_dom_score_land)*@match.map.land_weight,(faction.dom_score_water-match_dom_def_water)*@match.map.water_weight,(faction.dom_def_water-match_dom_score_water)*@match.map.water_weight,(faction.sci_score_land-match_sci_def_land)*@match.map.land_weight,(faction.sci_def_land-match_sci_score_land)*@match.map.land_weight,(faction.sci_score_water-match_sci_def_water)*@match.map.water_weight,(faction.sci_def_water-match_sci_score_water)*@match.map.water_weight,(faction.cul_score_land-match_cul_def_land)*@match.map.land_weight,(faction.cul_def_land-match_cul_score_land)*@match.map.land_weight,(faction.cul_score_water-match_cul_def_water)*@match.map.water_weight,(faction.cul_def_water-match_cul_score_water)*@match.map.water_weight,(faction.rel_score_land-match_rel_def_land)*@match.map.land_weight,(faction.rel_def_land-match_rel_score_land)*@match.map.land_weight,(faction.rel_score_water-match_rel_def_water)*@match.map.water_weight,(faction.rel_def_water-match_rel_score_water)*@match.map.water_weight,(faction.dip_score_land-match_dip_def_land)*@match.map.land_weight,(faction.dip_def_land-match_dip_score_land)*@match.map.land_weight,(faction.dip_score_water-match_dip_def_water)*@match.map.water_weight,(faction.dip_def_water-match_dip_score_water)*@match.map.water_weight].sort[1]+[(faction.dom_score_land-match_dom_def_land)*@match.map.land_weight,(faction.dom_def_land-match_dom_score_land)*@match.map.land_weight,(faction.dom_score_water-match_dom_def_water)*@match.map.water_weight,(faction.dom_def_water-match_dom_score_water)*@match.map.water_weight,(faction.sci_score_land-match_sci_def_land)*@match.map.land_weight,(faction.sci_def_land-match_sci_score_land)*@match.map.land_weight,(faction.sci_score_water-match_sci_def_water)*@match.map.water_weight,(faction.sci_def_water-match_sci_score_water)*@match.map.water_weight,(faction.cul_score_land-match_cul_def_land)*@match.map.land_weight,(faction.cul_def_land-match_cul_score_land)*@match.map.land_weight,(faction.cul_score_water-match_cul_def_water)*@match.map.water_weight,(faction.cul_def_water-match_cul_score_water)*@match.map.water_weight,(faction.rel_score_land-match_rel_def_land)*@match.map.land_weight,(faction.rel_def_land-match_rel_score_land)*@match.map.land_weight,(faction.rel_score_water-match_rel_def_water)*@match.map.water_weight,(faction.rel_def_water-match_rel_score_water)*@match.map.water_weight,(faction.dip_score_land-match_dip_def_land)*@match.map.land_weight,(faction.dip_def_land-match_dip_score_land)*@match.map.land_weight,(faction.dip_score_water-match_dip_def_water)*@match.map.water_weight,(faction.dip_def_water-match_dip_score_water)*@match.map.water_weight].sort[2]+[(faction.dom_score_land-match_dom_def_land)*@match.map.land_weight,(faction.dom_def_land-match_dom_score_land)*@match.map.land_weight,(faction.dom_score_water-match_dom_def_water)*@match.map.water_weight,(faction.dom_def_water-match_dom_score_water)*@match.map.water_weight,(faction.sci_score_land-match_sci_def_land)*@match.map.land_weight,(faction.sci_def_land-match_sci_score_land)*@match.map.land_weight,(faction.sci_score_water-match_sci_def_water)*@match.map.water_weight,(faction.sci_def_water-match_sci_score_water)*@match.map.water_weight,(faction.cul_score_land-match_cul_def_land)*@match.map.land_weight,(faction.cul_def_land-match_cul_score_land)*@match.map.land_weight,(faction.cul_score_water-match_cul_def_water)*@match.map.water_weight,(faction.cul_def_water-match_cul_score_water)*@match.map.water_weight,(faction.rel_score_land-match_rel_def_land)*@match.map.land_weight,(faction.rel_def_land-match_rel_score_land)*@match.map.land_weight,(faction.rel_score_water-match_rel_def_water)*@match.map.water_weight,(faction.rel_def_water-match_rel_score_water)*@match.map.water_weight,(faction.dip_score_land-match_dip_def_land)*@match.map.land_weight,(faction.dip_def_land-match_dip_score_land)*@match.map.land_weight,(faction.dip_score_water-match_dip_def_water)*@match.map.water_weight,(faction.dip_def_water-match_dip_score_water)*@match.map.water_weight].sort[3]+[(faction.dom_score_land-match_dom_def_land)*@match.map.land_weight,(faction.dom_def_land-match_dom_score_land)*@match.map.land_weight,(faction.dom_score_water-match_dom_def_water)*@match.map.water_weight,(faction.dom_def_water-match_dom_score_water)*@match.map.water_weight,(faction.sci_score_land-match_sci_def_land)*@match.map.land_weight,(faction.sci_def_land-match_sci_score_land)*@match.map.land_weight,(faction.sci_score_water-match_sci_def_water)*@match.map.water_weight,(faction.sci_def_water-match_sci_score_water)*@match.map.water_weight,(faction.cul_score_land-match_cul_def_land)*@match.map.land_weight,(faction.cul_def_land-match_cul_score_land)*@match.map.land_weight,(faction.cul_score_water-match_cul_def_water)*@match.map.water_weight,(faction.cul_def_water-match_cul_score_water)*@match.map.water_weight,(faction.rel_score_land-match_rel_def_land)*@match.map.land_weight,(faction.rel_def_land-match_rel_score_land)*@match.map.land_weight,(faction.rel_score_water-match_rel_def_water)*@match.map.water_weight,(faction.rel_def_water-match_rel_score_water)*@match.map.water_weight,(faction.dip_score_land-match_dip_def_land)*@match.map.land_weight,(faction.dip_def_land-match_dip_score_land)*@match.map.land_weight,(faction.dip_score_water-match_dip_def_water)*@match.map.water_weight,(faction.dip_def_water-match_dip_score_water)*@match.map.water_weight].sort[4])

      @score_table.push(faction_calc)
        
    end
    
   @sorted_score_table = @score_table.sort_by do |k|
      -k[:faction_overall_score]
      
  
    end

    render("match_templates/prefilled_form.html.erb")
  end

  def save_edits
    @match = Match.where({ :id => params.fetch("id_to_modify") }).first

    @match.map_id = params.fetch("map_id")
    @match.faction01_id = params.fetch("faction01_id")
    @match.faction02_id = params.fetch("faction02_id")
    @match.faction03_id = params.fetch("faction03_id")
    @match.faction04_id = params.fetch("faction04_id")
    @match.faction05_id = params.fetch("faction05_id")
    @match.faction06_id = params.fetch("faction06_id")
    @match.faction07_id = params.fetch("faction07_id")
    @match.owner_id = current_user.id

    if @match.valid?
      @match.save

      redirect_to("/existing_match_form/" + @match.id.to_s, { :notice => "Match updated successfully." })
    else
      render("match_templates/prefilled_form.html.erb")
    end
  end

  def remove_row
    @match = Match.where({ :id => params.fetch("id_to_remove") }).first

    @match.destroy

    redirect_to("/matches", { :notice => "Match deleted successfully." })
  end
end
