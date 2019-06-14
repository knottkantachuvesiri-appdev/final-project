class CreateFactions < ActiveRecord::Migration[5.1]
  def change
    create_table :factions do |t|
      t.integer :civ_id
      t.integer :leader_id
      t.integer :dom_score_land
      t.integer :dom_score_water
      t.integer :dom_def_land
      t.integer :dom_def_water
      t.integer :sci_score_land
      t.integer :sci_score_water
      t.integer :sci_def_land
      t.integer :sci_def_water
      t.integer :cul_score_land
      t.integer :cul_score_water
      t.integer :cul_def_land
      t.integer :cul_def_water
      t.integer :rel_score_land
      t.integer :rel_score_water
      t.integer :rel_def_land
      t.integer :rel_def_water
      t.integer :dip_score_land
      t.integer :dip_score_water
      t.integer :dip_def_land
      t.integer :dip_def_water

      t.timestamps
    end
  end
end
