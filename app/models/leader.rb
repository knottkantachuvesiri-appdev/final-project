# == Schema Information
#
# Table name: leaders
#
#  id             :integer          not null, primary key
#  name           :string
#  description    :text
#  leader_ability :string
#  leader_unit    :string
#  leader_agenda  :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Leader < ApplicationRecord
    has_many :factions, :dependent => :destroy
    validates :name, presence: true
    validates :description, presence: true
    validates :leader_ability, presence: true
    
    validates :leader_agenda, presence: true
        
end
