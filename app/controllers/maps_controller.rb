class MapsController < ApplicationController
  def list
    @maps = Map.all

    render("map_templates/list.html.erb")
  end

  def details
    @map = Map.where({ :id => params.fetch("id_to_display") }).first

    render("map_templates/details.html.erb")
  end

  def blank_form
    @map = Map.new

    render("map_templates/blank_form.html.erb")
  end

  def save_new_info
    @map = Map.new

    @map.name = params.fetch("name")
    @map.land_weight = params.fetch("land_weight")
    @map.water_weight = params.fetch("water_weight")

    if @map.valid?
      @map.save

      redirect_to("/maps", { :notice => "Map created successfully." })
    else
      render("map_templates/blank_form.html.erb")
    end
  end

  def prefilled_form
    @map = Map.where({ :id => params.fetch("id_to_prefill") }).first

    render("map_templates/prefilled_form.html.erb")
  end

  def save_edits
    @map = Map.where({ :id => params.fetch("id_to_modify") }).first

    @map.name = params.fetch("name")
    @map.land_weight = params.fetch("land_weight")
    @map.water_weight = params.fetch("water_weight")

    if @map.valid?
      @map.save

      redirect_to("/maps/" + @map.id.to_s, { :notice => "Map updated successfully." })
    else
      render("map_templates/prefilled_form.html.erb")
    end
  end

  def remove_row
    @map = Map.where({ :id => params.fetch("id_to_remove") }).first

    @map.destroy

    redirect_to("/maps", { :notice => "Map deleted successfully." })
  end
end
