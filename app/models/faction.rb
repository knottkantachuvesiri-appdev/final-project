# == Schema Information
#
# Table name: factions
#
#  id              :integer          not null, primary key
#  civ_id          :integer
#  leader_id       :integer
#  dom_score_land  :integer
#  dom_score_water :integer
#  dom_def_land    :integer
#  dom_def_water   :integer
#  sci_score_land  :integer
#  sci_score_water :integer
#  sci_def_land    :integer
#  sci_def_water   :integer
#  cul_score_land  :integer
#  cul_score_water :integer
#  cul_def_land    :integer
#  cul_def_water   :integer
#  rel_score_land  :integer
#  rel_score_water :integer
#  rel_def_land    :integer
#  rel_def_water   :integer
#  dip_score_land  :integer
#  dip_score_water :integer
#  dip_def_land    :integer
#  dip_def_water   :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Faction < ApplicationRecord
    belongs_to :civ
    belongs_to :leader
    has_many :matches, :foreign_key => "faction01_id", :dependent => :destroy
    has_many :matches, :foreign_key => "faction02_id", :dependent => :destroy
    has_many :matches, :foreign_key => "faction03_id", :dependent => :destroy
    has_many :matches, :foreign_key => "faction04_id", :dependent => :destroy
    has_many :matches, :foreign_key => "faction05_id", :dependent => :destroy
    has_many :matches, :foreign_key => "faction06_id", :dependent => :destroy
    has_many :matches, :foreign_key => "faction07_id", :dependent => :destroy
    
    validates :civ_id, presence: true
    validates :leader_id, presence: true
    
    validates :dom_score_land, presence: true
    validates :dom_score_water, presence: true
    validates :dom_def_land, presence: true
    validates :dom_def_water, presence: true
    
    validates :sci_score_land, presence: true
    validates :sci_score_water, presence: true
    validates :sci_def_land, presence: true
    validates :sci_def_water, presence: true
    
    validates :cul_score_land, presence: true
    validates :cul_score_water, presence: true
    validates :cul_def_land, presence: true
    validates :cul_def_water, presence: true    
    
    validates :rel_score_land, presence: true
    validates :rel_score_water, presence: true
    validates :rel_def_land, presence: true
    validates :rel_def_water, presence: true    
    
    validates :dip_score_land, presence: true
    validates :dip_score_water, presence: true
    validates :dip_def_land, presence: true
    validates :dip_def_water, presence: true 
end
