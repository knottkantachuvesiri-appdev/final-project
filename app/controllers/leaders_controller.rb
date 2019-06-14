class LeadersController < ApplicationController
  def list
    @leaders = Leader.all

    render("leader_templates/list.html.erb")
  end

  def details
    @leader = Leader.where({ :id => params.fetch("id_to_display") }).first

    render("leader_templates/details.html.erb")
  end

  def blank_form
    @leader = Leader.new

    render("leader_templates/blank_form.html.erb")
  end

  def save_new_info
    @leader = Leader.new

    @leader.name = params.fetch("name")
    @leader.description = params.fetch("description")
    @leader.leader_ability = params.fetch("leader_ability")
    @leader.leader_unit = params.fetch("leader_unit")
    @leader.leader_agenda = params.fetch("leader_agenda")

    if @leader.valid?
      @leader.save

      redirect_to("/leaders", { :notice => "Leader created successfully." })
    else
      render("leader_templates/blank_form.html.erb")
    end
  end

  def prefilled_form
    @leader = Leader.where({ :id => params.fetch("id_to_prefill") }).first

    render("leader_templates/prefilled_form.html.erb")
  end

  def save_edits
    @leader = Leader.where({ :id => params.fetch("id_to_modify") }).first

    @leader.name = params.fetch("name")
    @leader.description = params.fetch("description")
    @leader.leader_ability = params.fetch("leader_ability")
    @leader.leader_unit = params.fetch("leader_unit")
    @leader.leader_agenda = params.fetch("leader_agenda")

    if @leader.valid?
      @leader.save

      redirect_to("/leaders/" + @leader.id.to_s, { :notice => "Leader updated successfully." })
    else
      render("leader_templates/prefilled_form.html.erb")
    end
  end

  def remove_row
    @leader = Leader.where({ :id => params.fetch("id_to_remove") }).first

    @leader.destroy

    redirect_to("/leaders", { :notice => "Leader deleted successfully." })
  end
end
