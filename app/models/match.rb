# == Schema Information
#
# Table name: matches
#
#  id           :integer          not null, primary key
#  map_id       :integer
#  faction01_id :integer
#  faction02_id :integer
#  faction03_id :integer
#  faction04_id :integer
#  faction05_id :integer
#  faction06_id :integer
#  faction07_id :integer
#  owner_id     :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Match < ApplicationRecord
    belongs_to :faction01, :class_name => "Faction"
    belongs_to :faction02, :class_name => "Faction"
    belongs_to :faction03, :class_name => "Faction"
    belongs_to :faction04, :class_name => "Faction"
    belongs_to :faction05, :class_name => "Faction"
    belongs_to :faction06, :class_name => "Faction"
    belongs_to :faction07, :class_name => "Faction"
    belongs_to :map, :class_name => "Map"
    belongs_to :owner, :class_name => "User"
    
    validates :map_id, presence: true
    validates :owner_id, presence: true
    
    validates :faction01_id, presence: true
    validates :faction02_id, presence: true
    validates :faction03_id, presence: true
    validates :faction04_id, presence: true
    validates :faction05_id, presence: true
    validates :faction06_id, presence: true
    validates :faction07_id, presence: true
        
end
