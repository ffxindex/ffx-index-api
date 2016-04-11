class Monster < ApplicationRecord
  belongs_to :location
  has_many :kill_drops
  has_many :steal_drops
  has_one :bribe_drop
end
