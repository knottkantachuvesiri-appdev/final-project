# == Schema Information
#
# Table name: civs
#
#  id                    :integer          not null, primary key
#  name                  :string
#  unique_unit           :string
#  unique_infrastructure :string
#  description           :text
#  civ_ability           :string
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#

class Civ < ApplicationRecord
        has_many :factions, :dependent => :destroy
    validates :name, presence: true
    validates :unique_unit, presence: true
    validates :unique_infrastructure, presence: true
    validates :description, presence: true
    validates :civ_ability, presence: true
end
