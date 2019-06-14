# == Schema Information
#
# Table name: maps
#
#  id           :integer          not null, primary key
#  name         :string
#  land_weight  :float
#  water_weight :float
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Map < ApplicationRecord
    has_many :matches, :dependent => :destroy
    validates :name, presence: true
    validates :land_weight, presence: true
    validates :water_weight, presence: true
        
end
