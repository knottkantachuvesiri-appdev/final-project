class CivsController < ApplicationController
  def list
    @civs = Civ.all

    render("civ_templates/list.html.erb")
  end

  def details
    @civ = Civ.where({ :id => params.fetch("id_to_display") }).first

    render("civ_templates/details.html.erb")
  end

  def blank_form
    @civ = Civ.new

    render("civ_templates/blank_form.html.erb")
  end

  def save_new_info
    @civ = Civ.new

    @civ.name = params.fetch("name")
    @civ.unique_unit = params.fetch("unique_unit")
    @civ.unique_infrastructure = params.fetch("unique_infrastructure")
    @civ.description = params.fetch("description")
    @civ.civ_ability = params.fetch("civ_ability")

    if @civ.valid?
      @civ.save

      redirect_to("/civs", { :notice => "Civ created successfully." })
    else
      render("civ_templates/blank_form.html.erb")
    end
  end

  def prefilled_form
    @civ = Civ.where({ :id => params.fetch("id_to_prefill") }).first

    render("civ_templates/prefilled_form.html.erb")
  end

  def save_edits
    @civ = Civ.where({ :id => params.fetch("id_to_modify") }).first

    @civ.name = params.fetch("name")
    @civ.unique_unit = params.fetch("unique_unit")
    @civ.unique_infrastructure = params.fetch("unique_infrastructure")
    @civ.description = params.fetch("description")
    @civ.civ_ability = params.fetch("civ_ability")

    if @civ.valid?
      @civ.save

      redirect_to("/civs/" + @civ.id.to_s, { :notice => "Civ updated successfully." })
    else
      render("civ_templates/prefilled_form.html.erb")
    end
  end

  def remove_row
    @civ = Civ.where({ :id => params.fetch("id_to_remove") }).first

    @civ.destroy

    redirect_to("/civs", { :notice => "Civ deleted successfully." })
  end
end
